"""
Study session model
"""

from sqlalchemy import Column, Integer, String, DateTime, ForeignKey, Boolean, Text
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship

from app.core.database import Base


class Session(Base):
    """Study session model for tracking time spent on tasks"""
    
    __tablename__ = "sessions"
    
    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("users.id"), nullable=False)
    task_id = Column(Integer, ForeignKey("tasks.id"), nullable=True)
    
    # Session information
    duration_minutes = Column(Integer, nullable=False)
    start_time = Column(DateTime(timezone=True), nullable=False)
    end_time = Column(DateTime(timezone=True), nullable=True)
    
    # Session tracking
    is_active = Column(Boolean, default=False)
    notes = Column(Text, nullable=True)
    
    # Productivity metrics
    breaks_taken = Column(Integer, default=0)
    focus_score = Column(Integer, nullable=True)  # 1-10 scale (user self-rated)
    
    # Timestamps
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), onupdate=func.now())
    
    # Relationships
    user = relationship("User", back_populates="sessions")
    task = relationship("Task", back_populates="sessions")
