# Atlas Study - Productivity App

A unified student productivity app that syncs assignments, tasks, and events across LMS (Canvas/Blackboard) and calendars (Google/iOS).

## Project Structure

```
atlas-study/
├── atlas_study_app/          # Flutter app (mobile + desktop)
├── atlas-backend/            # FastAPI backend
├── docs/                     # Documentation
└── README.md                # This file
```

## Getting Started

### Prerequisites

1. **Flutter SDK** (3.16.0 or higher)
   ```bash
   # Download from: https://flutter.dev/docs/get-started/install/macos
   # Extract to ~/development/
   export PATH="$PATH:~/development/flutter/bin"
   ```

2. **Python 3.11+**
   ```bash
   # Install via Homebrew
   brew install python@3.11
   ```

3. **Google Cloud SDK**
   ```bash
   # Already installed based on your PATH
   gcloud auth login
   ```

4. **PostgreSQL** (for local development)
   ```bash
   brew install postgresql
   brew services start postgresql
   ```

### Quick Setup

1. **Flutter App Setup**
   ```bash
   cd atlas_study_app
   flutter create . --platforms ios,android,macos,windows
   flutter pub add riverpod flutter_riverpod drift drift_flutter dio freezed_annotation json_annotation
   flutter pub add --dev build_runner freezed json_serializable
   ```

2. **Backend Setup**
   ```bash
   cd atlas-backend
   python -m venv venv
   source venv/bin/activate
   pip install fastapi uvicorn sqlalchemy alembic psycopg2-binary redis python-jose[cryptography] passlib[bcrypt] python-multipart
   ```

3. **Database Setup**
   ```bash
   # Create local database
   createdb atlas_study_dev
   ```

## Development Phases

### Phase 1: Core MVP (Weeks 2-4)
- [x] Project setup
- [ ] Authentication system
- [ ] Task CRUD operations
- [ ] Basic timer functionality
- [ ] Local SQLite storage

### Phase 2: Integration (Weeks 5-7)
- [ ] Google Calendar integration
- [ ] Canvas LMS integration
- [ ] Two-way sync

### Phase 3: Polish (Weeks 8-10)
- [ ] Adaptive reminders
- [ ] Cross-platform features
- [ ] Background sync

## Tech Stack

### Frontend (Flutter)
- **Framework**: Flutter 3.16+
- **State Management**: Riverpod
- **Local Database**: Drift (SQLite)
- **HTTP Client**: Dio
- **Code Generation**: Freezed, JSON Serializable

### Backend (Python)
- **Framework**: FastAPI
- **Database**: PostgreSQL (Cloud SQL)
- **ORM**: SQLAlchemy
- **Authentication**: JWT + OAuth2
- **Cache**: Redis
- **Deployment**: Google Cloud Run

## Next Steps

1. Complete Flutter SDK installation and PATH setup
2. Run the setup commands above
3. Start with Phase 1 development
4. Set up GCP services for backend deployment

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [Google Cloud Platform](https://cloud.google.com/)
- [Canvas LMS API](https://canvas.instructure.com/doc/api/)
