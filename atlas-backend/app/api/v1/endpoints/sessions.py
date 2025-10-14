"""
Study session endpoints
"""

from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from typing import List

from app.core.database import get_db
from app.schemas.session import SessionCreate, SessionUpdate, SessionResponse
from app.services.session_service import SessionService

router = APIRouter()


@router.get("/", response_model=List[SessionResponse])
async def get_sessions(
    skip: int = 0,
    limit: int = 100,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Get all study sessions for the authenticated user"""
    session_service = SessionService(db)
    sessions = session_service.get_sessions(skip=skip, limit=limit)
    return [SessionResponse.from_orm(session) for session in sessions]


@router.post("/", response_model=SessionResponse)
async def create_session(
    session_data: SessionCreate,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Create a new study session"""
    session_service = SessionService(db)
    session = session_service.create_session(session_data)
    return SessionResponse.from_orm(session)


@router.get("/{session_id}", response_model=SessionResponse)
async def get_session(
    session_id: int,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Get a specific study session by ID"""
    session_service = SessionService(db)
    session = session_service.get_session(session_id)
    if not session:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Session not found"
        )
    return SessionResponse.from_orm(session)


@router.put("/{session_id}", response_model=SessionResponse)
async def update_session(
    session_id: int,
    session_data: SessionUpdate,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Update a specific study session"""
    session_service = SessionService(db)
    session = session_service.update_session(session_id, session_data)
    if not session:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Session not found"
        )
    return SessionResponse.from_orm(session)


@router.delete("/{session_id}")
async def delete_session(
    session_id: int,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Delete a specific study session"""
    session_service = SessionService(db)
    success = session_service.delete_session(session_id)
    if not success:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Session not found"
        )
    return {"message": "Session deleted successfully"}
