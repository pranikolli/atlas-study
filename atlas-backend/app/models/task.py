"""
Task model
"""

from sqlalchemy import Column, Integer, String, DateTime, ForeignKey, Boolean, Text, Enum
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship
import enum

from app.core.database import Base


class TaskType(str, enum.Enum):
    """Task type enumeration"""
    ASSIGNMENT = "assignment"
    EXAM = "exam"
    PROJECT = "project"
    READING = "reading"
    STUDY = "study"
    OTHER = "other"


class TaskStatus(str, enum.Enum):
    """Task status enumeration"""
    TODO = "todo"
    IN_PROGRESS = "in_progress"
    COMPLETED = "completed"
    CANCELLED = "cancelled"


class Task(Base):
    """Task model for assignments and study tasks"""
    
    __tablename__ = "tasks"
    
    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("users.id"), nullable=False)
    course_id = Column(Integer, ForeignKey("courses.id"), nullable=True)
    
    # Task information
    title = Column(String, nullable=False)
    description = Column(Text, nullable=True)
    task_type = Column(Enum(TaskType), default=TaskType.OTHER)
    status = Column(Enum(TaskStatus), default=TaskStatus.TODO)
    
    # Scheduling
    due_date = Column(DateTime(timezone=True), nullable=True)
    estimated_duration = Column(Integer, nullable=True)  # minutes
    actual_duration = Column(Integer, nullable=True)     # minutes
    
    # Priority and organization
    priority = Column(Integer, default=1)  # 1-5 scale
    tags = Column(String, nullable=True)   # comma-separated tags
    
    # Links and resources
    external_url = Column(String, nullable=True)
    attachment_url = Column(String, nullable=True)
    
    # Completion tracking
    is_completed = Column(Boolean, default=False)
    completed_at = Column(DateTime(timezone=True), nullable=True)
    
    # Timestamps
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), onupdate=func.now())
    
    # Relationships
    user = relationship("User", back_populates="tasks")
    course = relationship("Course", back_populates="tasks")
    sessions = relationship("Session", back_populates="task", cascade="all, delete-orphan")
