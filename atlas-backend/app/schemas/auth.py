"""
Authentication schemas
"""

from pydantic import BaseModel, EmailStr
from typing import Optional


class UserCreate(BaseModel):
    """Schema for user registration"""
    email: EmailStr
    password: str
    full_name: Optional[str] = None


class UserResponse(BaseModel):
    """Schema for user response"""
    id: int
    email: str
    full_name: Optional[str] = None
    is_active: bool
    is_verified: bool
    sleep_window_start: str = "22:00"
    sleep_window_end: str = "08:00"
    reminder_intensity: str = "medium"
    default_task_duration: int = 60
    
    class Config:
        from_attributes = True


class Token(BaseModel):
    """Schema for authentication tokens"""
    access_token: str
    refresh_token: str
    token_type: str = "bearer"


class TokenData(BaseModel):
    """Schema for token data"""
    email: Optional[str] = None


class EmailVerification(BaseModel):
    """Schema for email verification"""
    token: str
