"""
Task service
"""

from sqlalchemy.orm import Session
from typing import List, Optional

from app.models.task import Task
from app.schemas.task import TaskCreate, TaskUpdate


class TaskService:
    """Service for task operations"""
    
    def __init__(self, db: Session):
        self.db = db
    
    def get_tasks(self, user_id: int, skip: int = 0, limit: int = 100) -> List[Task]:
        """Get all tasks for a user"""
        return (
            self.db.query(Task)
            .filter(Task.user_id == user_id)
            .offset(skip)
            .limit(limit)
            .all()
        )
    
    def get_task(self, task_id: int) -> Optional[Task]:
        """Get a specific task by ID"""
        return self.db.query(Task).filter(Task.id == task_id).first()
    
    def create_task(self, task_data: TaskCreate, user_id: int) -> Task:
        """Create a new task"""
        db_task = Task(
            user_id=user_id,
            **task_data.dict()
        )
        
        self.db.add(db_task)
        self.db.commit()
        self.db.refresh(db_task)
        
        return db_task
    
    def update_task(self, task_id: int, task_data: TaskUpdate) -> Optional[Task]:
        """Update a specific task"""
        task = self.get_task(task_id)
        if not task:
            return None
        
        update_data = task_data.dict(exclude_unset=True)
        for field, value in update_data.items():
            if hasattr(task, field):
                setattr(task, field, value)
        
        self.db.commit()
        self.db.refresh(task)
        return task
    
    def delete_task(self, task_id: int) -> bool:
        """Delete a specific task"""
        task = self.get_task(task_id)
        if not task:
            return False
        
        self.db.delete(task)
        self.db.commit()
        return True
