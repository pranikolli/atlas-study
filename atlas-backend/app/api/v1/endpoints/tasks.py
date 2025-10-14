"""
Task management endpoints
"""

from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from typing import List

from app.core.database import get_db
from app.schemas.task import TaskCreate, TaskUpdate, TaskResponse
from app.models.task import Task
from app.services.task_service import TaskService

router = APIRouter()


@router.get("/", response_model=List[TaskResponse])
async def get_tasks(
    skip: int = 0,
    limit: int = 100,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Get all tasks for the authenticated user"""
    task_service = TaskService(db)
    tasks = task_service.get_tasks(skip=skip, limit=limit)
    return [TaskResponse.from_orm(task) for task in tasks]


@router.post("/", response_model=TaskResponse)
async def create_task(
    task_data: TaskCreate,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Create a new task"""
    task_service = TaskService(db)
    task = task_service.create_task(task_data)
    return TaskResponse.from_orm(task)


@router.get("/{task_id}", response_model=TaskResponse)
async def get_task(
    task_id: int,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Get a specific task by ID"""
    task_service = TaskService(db)
    task = task_service.get_task(task_id)
    if not task:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Task not found"
        )
    return TaskResponse.from_orm(task)


@router.put("/{task_id}", response_model=TaskResponse)
async def update_task(
    task_id: int,
    task_data: TaskUpdate,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Update a specific task"""
    task_service = TaskService(db)
    task = task_service.update_task(task_id, task_data)
    if not task:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Task not found"
        )
    return TaskResponse.from_orm(task)


@router.delete("/{task_id}")
async def delete_task(
    task_id: int,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Delete a specific task"""
    task_service = TaskService(db)
    success = task_service.delete_task(task_id)
    if not success:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Task not found"
        )
    return {"message": "Task deleted successfully"}
