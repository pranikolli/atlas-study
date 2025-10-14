"""
API v1 router configuration
"""

from fastapi import APIRouter

from app.api.v1.endpoints import auth, tasks, courses, sessions, user

api_router = APIRouter()

# Include all endpoint routers
api_router.include_router(auth.router, prefix="/auth", tags=["authentication"])
api_router.include_router(user.router, prefix="/user", tags=["user"])
api_router.include_router(tasks.router, prefix="/tasks", tags=["tasks"])
api_router.include_router(courses.router, prefix="/courses", tags=["courses"])
api_router.include_router(sessions.router, prefix="/sessions", tags=["sessions"])
