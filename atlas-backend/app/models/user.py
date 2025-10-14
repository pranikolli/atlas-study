"""
User model
"""

from sqlalchemy import Column, Integer, String, Boolean, DateTime, Text
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship

from app.core.database import Base


class User(Base):
    """User model for authentication and profile management"""
    
    __tablename__ = "users"
    
    id = Column(Integer, primary_key=True, index=True)
    email = Column(String, unique=True, index=True, nullable=False)
    hashed_password = Column(String, nullable=False)
    full_name = Column(String, nullable=True)
    is_active = Column(Boolean, default=True)
    is_verified = Column(Boolean, default=False)
    
    # User preferences
    sleep_window_start = Column(String, default="22:00")  # HH:MM format
    sleep_window_end = Column(String, default="08:00")    # HH:MM format
    reminder_intensity = Column(String, default="medium")  # low, medium, high
    default_task_duration = Column(Integer, default=60)   # minutes
    
    # Timestamps
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), onupdate=func.now())
    last_login_at = Column(DateTime(timezone=True), nullable=True)
    
    # Relationships
    courses = relationship("Course", back_populates="user", cascade="all, delete-orphan")
    tasks = relationship("Task", back_populates="user", cascade="all, delete-orphan")
    sessions = relationship("Session", back_populates="user", cascade="all, delete-orphan")
