"""
Task schemas
"""

from pydantic import BaseModel
from typing import Optional
from datetime import datetime

from app.models.task import TaskType, TaskStatus


class TaskCreate(BaseModel):
    """Schema for creating a new task"""
    title: str
    description: Optional[str] = None
    task_type: TaskType = TaskType.OTHER
    course_id: Optional[int] = None
    due_date: Optional[datetime] = None
    estimated_duration: Optional[int] = None  # minutes
    priority: int = 1  # 1-5 scale
    tags: Optional[str] = None
    external_url: Optional[str] = None
    attachment_url: Optional[str] = None


class TaskUpdate(BaseModel):
    """Schema for updating a task"""
    title: Optional[str] = None
    description: Optional[str] = None
    task_type: Optional[TaskType] = None
    course_id: Optional[int] = None
    due_date: Optional[datetime] = None
    estimated_duration: Optional[int] = None
    status: Optional[TaskStatus] = None
    priority: Optional[int] = None
    tags: Optional[str] = None
    external_url: Optional[str] = None
    attachment_url: Optional[str] = None
    is_completed: Optional[bool] = None


class TaskResponse(BaseModel):
    """Schema for task response"""
    id: int
    title: str
    description: Optional[str] = None
    task_type: TaskType
    status: TaskStatus
    course_id: Optional[int] = None
    due_date: Optional[datetime] = None
    estimated_duration: Optional[int] = None
    actual_duration: Optional[int] = None
    priority: int
    tags: Optional[str] = None
    external_url: Optional[str] = None
    attachment_url: Optional[str] = None
    is_completed: bool
    completed_at: Optional[datetime] = None
    created_at: datetime
    updated_at: Optional[datetime] = None
    
    class Config:
        from_attributes = True
