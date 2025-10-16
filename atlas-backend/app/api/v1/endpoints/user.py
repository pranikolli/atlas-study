"""
User profile endpoints
"""

from fastapi import APIRouter, Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer
from sqlalchemy.orm import Session

from app.core.database import get_db
from app.core.security import verify_token
from app.schemas.auth import UserResponse, UpdateEmailRequest, UpdatePasswordRequest
from app.models.user import User
from app.services.auth_service import AuthService

router = APIRouter()

# OAuth2 scheme for token extraction
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="api/v1/auth/login")


def get_current_user_dependency(token: str = Depends(oauth2_scheme), db: Session = Depends(get_db)) -> User:
    """Get current authenticated user"""
    credentials_exception = HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail="Could not validate credentials",
        headers={"WWW-Authenticate": "Bearer"},
    )
    
    email = verify_token(token)
    if email is None:
        raise credentials_exception
    
    auth_service = AuthService(db)
    user = auth_service.get_user_by_email(email)
    if user is None:
        raise credentials_exception
    
    return user


@router.get("/me", response_model=UserResponse)
async def get_current_user(current_user: User = Depends(get_current_user_dependency)):
    """Get current user profile"""
    return UserResponse.model_validate(current_user)


@router.put("/me/email", response_model=UserResponse)
async def update_email(payload: UpdateEmailRequest, current_user: User = Depends(get_current_user_dependency), db: Session = Depends(get_db)):
    """Update the current user's email"""
    service = AuthService(db)
    updated = service.change_email(current_user.id, payload.new_email)
    if not updated:
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Email already in use")
    return UserResponse.model_validate(updated)


@router.put("/me/password", status_code=status.HTTP_204_NO_CONTENT)
async def update_password(payload: UpdatePasswordRequest, current_user: User = Depends(get_current_user_dependency), db: Session = Depends(get_db)):
    """Update the current user's password"""
    service = AuthService(db)
    ok = service.change_password(current_user.id, payload.current_password, payload.new_password)
    if not ok:
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Current password is incorrect")
    return None
