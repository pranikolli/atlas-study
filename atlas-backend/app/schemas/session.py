"""
Session schemas
"""

from pydantic import BaseModel
from typing import Optional
from datetime import datetime


class SessionCreate(BaseModel):
    """Schema for creating a new study session"""
    task_id: Optional[int] = None
    duration_minutes: int
    start_time: datetime
    notes: Optional[str] = None
    breaks_taken: int = 0
    focus_score: Optional[int] = None  # 1-10 scale


class SessionUpdate(BaseModel):
    """Schema for updating a study session"""
    duration_minutes: Optional[int] = None
    end_time: Optional[datetime] = None
    is_active: Optional[bool] = None
    notes: Optional[str] = None
    breaks_taken: Optional[int] = None
    focus_score: Optional[int] = None


class SessionResponse(BaseModel):
    """Schema for session response"""
    id: int
    task_id: Optional[int] = None
    duration_minutes: int
    start_time: datetime
    end_time: Optional[datetime] = None
    is_active: bool
    notes: Optional[str] = None
    breaks_taken: int
    focus_score: Optional[int] = None
    created_at: datetime
    updated_at: Optional[datetime] = None
    
    class Config:
        from_attributes = True
