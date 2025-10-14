"""
Authentication service
"""

from sqlalchemy.orm import Session

from app.models.user import User
from app.schemas.auth import UserCreate
from app.core.security import get_password_hash, verify_password


class AuthService:
    """Service for authentication operations"""
    
    def __init__(self, db: Session):
        self.db = db
    
    def get_user_by_email(self, email: str) -> User:
        """Get user by email"""
        return self.db.query(User).filter(User.email == email).first()
    
    def get_user_by_id(self, user_id: int) -> User:
        """Get user by ID"""
        return self.db.query(User).filter(User.id == user_id).first()
    
    def create_user(self, user_data: UserCreate) -> User:
        """Create a new user"""
        hashed_password = get_password_hash(user_data.password)
        
        db_user = User(
            email=user_data.email,
            hashed_password=hashed_password,
            full_name=user_data.full_name,
        )
        
        self.db.add(db_user)
        self.db.commit()
        self.db.refresh(db_user)
        
        return db_user
    
    def authenticate_user(self, email: str, password: str) -> User:
        """Authenticate user with email and password"""
        user = self.get_user_by_email(email)
        if not user:
            return None
        if not verify_password(password, user.hashed_password):
            return None
        return user
    
    def update_user(self, user_id: int, user_data: dict) -> User:
        """Update user information"""
        user = self.get_user_by_id(user_id)
        if not user:
            return None
        
        for field, value in user_data.items():
            if hasattr(user, field) and value is not None:
                setattr(user, field, value)
        
        self.db.commit()
        self.db.refresh(user)
        return user
