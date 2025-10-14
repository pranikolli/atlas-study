"""
Course service
"""

from sqlalchemy.orm import Session
from typing import List, Optional

from app.models.course import Course
from app.schemas.course import CourseCreate, CourseUpdate


class CourseService:
    """Service for course operations"""
    
    def __init__(self, db: Session):
        self.db = db
    
    def get_courses(self, user_id: int) -> List[Course]:
        """Get all courses for a user"""
        return self.db.query(Course).filter(Course.user_id == user_id).all()
    
    def get_course(self, course_id: int) -> Optional[Course]:
        """Get a specific course by ID"""
        return self.db.query(Course).filter(Course.id == course_id).first()
    
    def create_course(self, course_data: CourseCreate, user_id: int) -> Course:
        """Create a new course"""
        db_course = Course(
            user_id=user_id,
            **course_data.dict()
        )
        
        self.db.add(db_course)
        self.db.commit()
        self.db.refresh(db_course)
        
        return db_course
    
    def update_course(self, course_id: int, course_data: CourseUpdate) -> Optional[Course]:
        """Update a specific course"""
        course = self.get_course(course_id)
        if not course:
            return None
        
        update_data = course_data.dict(exclude_unset=True)
        for field, value in update_data.items():
            if hasattr(course, field):
                setattr(course, field, value)
        
        self.db.commit()
        self.db.refresh(course)
        return course
    
    def delete_course(self, course_id: int) -> bool:
        """Delete a specific course"""
        course = self.get_course(course_id)
        if not course:
            return False
        
        self.db.delete(course)
        self.db.commit()
        return True
