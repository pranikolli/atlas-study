"""
Course schemas
"""

from pydantic import BaseModel
from typing import Optional


class CourseCreate(BaseModel):
    """Schema for creating a new course"""
    name: str
    code: Optional[str] = None
    term: Optional[str] = None
    color: str = "#1F77B4"  # Default blue color
    instructor: Optional[str] = None
    description: Optional[str] = None


class CourseUpdate(BaseModel):
    """Schema for updating a course"""
    name: Optional[str] = None
    code: Optional[str] = None
    term: Optional[str] = None
    color: Optional[str] = None
    instructor: Optional[str] = None
    description: Optional[str] = None


class CourseResponse(BaseModel):
    """Schema for course response"""
    id: int
    name: str
    code: Optional[str] = None
    term: Optional[str] = None
    color: str
    instructor: Optional[str] = None
    description: Optional[str] = None
    created_at: str
    updated_at: Optional[str] = None
    
    class Config:
        from_attributes = True
