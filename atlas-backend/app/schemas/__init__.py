"""
Pydantic schemas package
"""

from app.schemas.auth import UserCreate, UserResponse, Token, TokenData, EmailVerification
from app.schemas.task import TaskCreate, TaskUpdate, TaskResponse
from app.schemas.course import CourseCreate, CourseUpdate, CourseResponse
from app.schemas.session import SessionCreate, SessionUpdate, SessionResponse

__all__ = [
    # Auth schemas
    "UserCreate",
    "UserResponse", 
    "Token",
    "TokenData",
    "EmailVerification",
    
    # Task schemas
    "TaskCreate",
    "TaskUpdate",
    "TaskResponse",
    
    # Course schemas
    "CourseCreate",
    "CourseUpdate", 
    "CourseResponse",
    
    # Session schemas
    "SessionCreate",
    "SessionUpdate",
    "SessionResponse",
]
