"""
Course model
"""

from sqlalchemy import Column, Integer, String, DateTime, ForeignKey
from sqlalchemy.sql import func
from sqlalchemy.orm import relationship

from app.core.database import Base


class Course(Base):
    """Course model for organizing tasks and assignments"""
    
    __tablename__ = "courses"
    
    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey("users.id"), nullable=False)
    
    # Course information
    name = Column(String, nullable=False)
    code = Column(String, nullable=True)  # e.g., "CS 101", "MATH 201"
    term = Column(String, nullable=True)  # e.g., "Fall 2024", "Spring 2025"
    color = Column(String, default="#1F77B4")  # Hex color code
    
    # Optional course details
    instructor = Column(String, nullable=True)
    description = Column(String, nullable=True)
    
    # Timestamps
    created_at = Column(DateTime(timezone=True), server_default=func.now())
    updated_at = Column(DateTime(timezone=True), onupdate=func.now())
    
    # Relationships
    user = relationship("User", back_populates="courses")
    tasks = relationship("Task", back_populates="course", cascade="all, delete-orphan")
