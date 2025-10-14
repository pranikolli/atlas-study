"""
Session service
"""

from sqlalchemy.orm import Session
from typing import List, Optional

from app.models.session import Session
from app.schemas.session import SessionCreate, SessionUpdate


class SessionService:
    """Service for study session operations"""
    
    def __init__(self, db: Session):
        self.db = db
    
    def get_sessions(self, user_id: int, skip: int = 0, limit: int = 100) -> List[Session]:
        """Get all study sessions for a user"""
        return (
            self.db.query(Session)
            .filter(Session.user_id == user_id)
            .offset(skip)
            .limit(limit)
            .all()
        )
    
    def get_session(self, session_id: int) -> Optional[Session]:
        """Get a specific study session by ID"""
        return self.db.query(Session).filter(Session.id == session_id).first()
    
    def create_session(self, session_data: SessionCreate, user_id: int) -> Session:
        """Create a new study session"""
        db_session = Session(
            user_id=user_id,
            **session_data.dict()
        )
        
        self.db.add(db_session)
        self.db.commit()
        self.db.refresh(db_session)
        
        return db_session
    
    def update_session(self, session_id: int, session_data: SessionUpdate) -> Optional[Session]:
        """Update a specific study session"""
        session = self.get_session(session_id)
        if not session:
            return None
        
        update_data = session_data.dict(exclude_unset=True)
        for field, value in update_data.items():
            if hasattr(session, field):
                setattr(session, field, value)
        
        self.db.commit()
        self.db.refresh(session)
        return session
    
    def delete_session(self, session_id: int) -> bool:
        """Delete a specific study session"""
        session = self.get_session(session_id)
        if not session:
            return False
        
        self.db.delete(session)
        self.db.commit()
        return True
