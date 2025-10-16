"""
Authentication endpoints
"""

from fastapi import APIRouter, Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer
from sqlalchemy.orm import Session
from pydantic import BaseModel

from app.core.config import settings
from app.core.security import create_access_token, create_refresh_token, verify_password, get_password_hash, verify_token
from app.core.database import get_db
from app.schemas.auth import Token, UserCreate, UserResponse
from app.models.user import User
from app.services.auth_service import AuthService

router = APIRouter()


# OAuth2 scheme for token extraction
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="api/v1/auth/login")


@router.post("/signup", response_model=UserResponse)
async def signup(user_data: UserCreate, db: Session = Depends(get_db)):
    """Register a new user"""
    auth_service = AuthService(db)
    
    # Check if user already exists
    existing_user = auth_service.get_user_by_email(user_data.email)
    if existing_user:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Email already registered"
        )
    
    # Create new user
    user = auth_service.create_user(user_data)
    return UserResponse.model_validate(user)


class LoginRequest(BaseModel):
    email: str
    password: str

@router.post("/login", response_model=Token)
async def login(login_data: LoginRequest, db: Session = Depends(get_db)):
    """Authenticate user and return tokens"""
    auth_service = AuthService(db)
    
    # Authenticate user
    user = auth_service.authenticate_user(login_data.email, login_data.password)
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Incorrect email or password",
            headers={"WWW-Authenticate": "Bearer"},
        )
    
    # Create tokens
    access_token = create_access_token(data={"sub": user.email})
    refresh_token = create_refresh_token(data={"sub": user.email})
    
    return Token(
        access_token=access_token,
        refresh_token=refresh_token,
        token_type="bearer"
    )


@router.post("/refresh", response_model=Token)
async def refresh_token(refresh_token: str, db: Session = Depends(get_db)):
    """Refresh access token using refresh token"""
    # TODO: Implement refresh token validation and new access token creation
    raise HTTPException(
        status_code=status.HTTP_501_NOT_IMPLEMENTED,
        detail="Refresh token endpoint not implemented yet"
    )


@router.post("/verify-email")
async def verify_email(token: str, db: Session = Depends(get_db)):
    """Verify user email with token"""
    # TODO: Implement email verification
    raise HTTPException(
        status_code=status.HTTP_501_NOT_IMPLEMENTED,
        detail="Email verification not implemented yet"
    )
