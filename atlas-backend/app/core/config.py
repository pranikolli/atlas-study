"""
Configuration settings for Atlas Study API (Pydantic v2)
"""

from typing import List
from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    """Application settings"""

    # Pydantic v2 settings config
    model_config = SettingsConfigDict(env_file=".env", case_sensitive=True)

    # App
    APP_NAME: str = "Atlas Study API"
    ENVIRONMENT: str = "development"
    DEBUG: bool = True

    # Security
    SECRET_KEY: str = "your-secret-key-change-in-production"
    ALGORITHM: str = "HS256"
    ACCESS_TOKEN_EXPIRE_MINUTES: int = 15
    REFRESH_TOKEN_EXPIRE_DAYS: int = 30

    # Database
    DATABASE_URL: str = "postgresql://user:password@localhost/atlas_study_dev"

    # Redis
    REDIS_URL: str = "redis://localhost:6379"

    # CORS
    ALLOWED_HOSTS: List[str] = ["*"]

    # Google OAuth
    GOOGLE_CLIENT_ID: str = ""
    GOOGLE_CLIENT_SECRET: str = ""

    # Apple OAuth
    APPLE_CLIENT_ID: str = ""
    APPLE_TEAM_ID: str = ""
    APPLE_KEY_ID: str = ""
    APPLE_PRIVATE_KEY: str = ""

    # SendGrid
    SENDGRID_API_KEY: str = ""
    FROM_EMAIL: str = "noreply@atlasstudy.app"

    # Canvas LMS
    CANVAS_API_URL: str = "https://your-school.instructure.com/api/v1"

    # Google Calendar
    GOOGLE_CALENDAR_API_URL: str = "https://www.googleapis.com/calendar/v3"


settings = Settings()
