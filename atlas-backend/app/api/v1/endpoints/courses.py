"""
Course management endpoints
"""

from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from typing import List

from app.core.database import get_db
from app.schemas.course import CourseCreate, CourseUpdate, CourseResponse
from app.services.course_service import CourseService

router = APIRouter()


@router.get("/", response_model=List[CourseResponse])
async def get_courses(
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Get all courses for the authenticated user"""
    course_service = CourseService(db)
    courses = course_service.get_courses()
    return [CourseResponse.from_orm(course) for course in courses]


@router.post("/", response_model=CourseResponse)
async def create_course(
    course_data: CourseCreate,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Create a new course"""
    course_service = CourseService(db)
    course = course_service.create_course(course_data)
    return CourseResponse.from_orm(course)


@router.get("/{course_id}", response_model=CourseResponse)
async def get_course(
    course_id: int,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Get a specific course by ID"""
    course_service = CourseService(db)
    course = course_service.get_course(course_id)
    if not course:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Course not found"
        )
    return CourseResponse.from_orm(course)


@router.put("/{course_id}", response_model=CourseResponse)
async def update_course(
    course_id: int,
    course_data: CourseUpdate,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Update a specific course"""
    course_service = CourseService(db)
    course = course_service.update_course(course_id, course_data)
    if not course:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Course not found"
        )
    return CourseResponse.from_orm(course)


@router.delete("/{course_id}")
async def delete_course(
    course_id: int,
    db: Session = Depends(get_db)
    # TODO: Add user authentication dependency
):
    """Delete a specific course"""
    course_service = CourseService(db)
    success = course_service.delete_course(course_id)
    if not success:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Course not found"
        )
    return {"message": "Course deleted successfully"}
