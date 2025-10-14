# Atlas Study - Complete Setup Guide

## 🚀 Quick Start Checklist

### Prerequisites Installation
- [ ] **Flutter SDK 3.16+** - [Download here](https://flutter.dev/docs/get-started/install/macos)
- [ ] **Python 3.11+** - `brew install python@3.11`
- [ ] **PostgreSQL** - `brew install postgresql && brew services start postgresql`
- [ ] **Redis** - `brew install redis && brew services start redis`
- [ ] **Google Cloud SDK** - ✅ Already installed
- [ ] **Git** - ✅ Already installed

### 1. Flutter Setup

```bash
# Add Flutter to PATH (add to ~/.zshrc)
export PATH="$PATH:/path/to/flutter/bin"

# Verify installation
flutter doctor

# Navigate to Flutter app directory
cd atlas_study_app

# Create Flutter project (if not already created)
flutter create . --platforms ios,android,macos,windows

# Install dependencies
flutter pub get

# Run code generation
flutter packages pub run build_runner build
```

### 2. Backend Setup

```bash
# Navigate to backend directory
cd atlas-backend

# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Create local database
createdb atlas_study_dev

# Set up environment variables
cp env.example .env
# Edit .env with your actual values

# Initialize Alembic
alembic init alembic

# Create initial migration
alembic revision --autogenerate -m "Initial migration"

# Run migrations
alembic upgrade head
```

### 3. GCP Setup

```bash
# Authenticate with Google Cloud
gcloud auth login

# Set your project
gcloud config set project atlas-study

# Enable required APIs
gcloud services enable run.googleapis.com
gcloud services enable sqladmin.googleapis.com
gcloud services enable secretmanager.googleapis.com
gcloud services enable cloudbuild.googleapis.com

# Create Cloud SQL instance (for production)
gcloud sql instances create atlas-study-db \
    --database-version=POSTGRES_15 \
    --tier=db-f1-micro \
    --region=us-central1

# Create database
gcloud sql databases create atlas_study --instance=atlas-study-db
```

## 📱 Development Workflow

### Running the Flutter App

```bash
cd atlas_study_app

# Run on iOS Simulator
flutter run -d ios

# Run on Android Emulator
flutter run -d android

# Run on macOS
flutter run -d macos

# Run on Windows
flutter run -d windows
```

### Running the Backend API

```bash
cd atlas-backend
source venv/bin/activate

# Run development server
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000

# API will be available at http://localhost:8000
# API docs at http://localhost:8000/docs
```

### Database Operations

```bash
# Create new migration
alembic revision --autogenerate -m "Description of changes"

# Apply migrations
alembic upgrade head

# Rollback migration
alembic downgrade -1
```

## 🔧 Configuration

### Environment Variables

Create a `.env` file in `atlas-backend/` with:

```env
# Database
DATABASE_URL=postgresql://$(whoami)@localhost/atlas_study_dev

# Security
SECRET_KEY=your-super-secret-key-here

# Google OAuth (get from Google Cloud Console)
GOOGLE_CLIENT_ID=your-google-client-id
GOOGLE_CLIENT_SECRET=your-google-client-secret

# SendGrid (for email verification)
SENDGRID_API_KEY=your-sendgrid-api-key
```

### Flutter Configuration

Update `atlas_study_app/lib/core/config/api_config.dart`:

```dart
class ApiConfig {
  static const String baseUrl = 'http://localhost:8000/api/v1';
  static const String apiKey = 'your-api-key';
}
```

## 🧪 Testing

### Backend Tests

```bash
cd atlas-backend
source venv/bin/activate

# Run tests
pytest

# Run with coverage
pytest --cov=app tests/
```

### Flutter Tests

```bash
cd atlas_study_app

# Run unit tests
flutter test

# Run integration tests
flutter test integration_test/
```

## 📦 Deployment

### Backend to Google Cloud Run

```bash
# Build and deploy
gcloud run deploy atlas-study-api \
    --source . \
    --platform managed \
    --region us-central1 \
    --allow-unauthenticated

# Set environment variables
gcloud run services update atlas-study-api \
    --region us-central1 \
    --set-env-vars DATABASE_URL=your-cloud-sql-url
```

### Flutter App Distribution

```bash
# Build for iOS
flutter build ios --release

# Build for Android
flutter build apk --release

# Build for macOS
flutter build macos --release

# Build for Windows
flutter build windows --release
```

## 🔐 Security Checklist

- [ ] Change default `SECRET_KEY` in production
- [ ] Use HTTPS in production
- [ ] Set up proper CORS policies
- [ ] Enable database SSL connections
- [ ] Store secrets in Google Secret Manager
- [ ] Implement rate limiting
- [ ] Set up monitoring and logging

## 📊 Monitoring

### Google Cloud Monitoring

```bash
# Enable monitoring
gcloud services enable monitoring.googleapis.com

# Set up alerting policies
gcloud alpha monitoring policies create --policy-from-file=alerting-policy.yaml
```

### Sentry Integration

Add to `atlas_study_app/pubspec.yaml`:

```yaml
dependencies:
  sentry_flutter: ^7.0.0
```

## 🚨 Troubleshooting

### Common Issues

1. **Flutter not found in PATH**
   ```bash
   export PATH="$PATH:/path/to/flutter/bin"
   source ~/.zshrc
   ```

2. **Database connection issues**
   ```bash
   # Check if PostgreSQL is running
   brew services list | grep postgresql
   
   # Start PostgreSQL
   brew services start postgresql
   ```

3. **Port already in use**
   ```bash
   # Find process using port 8000
   lsof -ti:8000
   
   # Kill process
   kill -9 $(lsof -ti:8000)
   ```

4. **Flutter build issues**
   ```bash
   flutter clean
   flutter pub get
   flutter packages pub run build_runner clean
   flutter packages pub run build_runner build --delete-conflicting-outputs
   ```

## 📚 Next Steps

### Phase 1: Core MVP (Weeks 2-4)
1. Complete authentication system
2. Implement task CRUD operations
3. Build basic timer functionality
4. Add local notifications

### Phase 2: Integration (Weeks 5-7)
1. Google Calendar integration
2. Canvas LMS integration
3. Two-way sync implementation

### Phase 3: Polish (Weeks 8-10)
1. Adaptive reminders
2. Cross-platform features
3. Background sync

## 🆘 Getting Help

- [Flutter Documentation](https://flutter.dev/docs)
- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [Google Cloud Documentation](https://cloud.google.com/docs)
- [Drift Documentation](https://drift.simonbinder.eu/)
- [Riverpod Documentation](https://riverpod.dev/)

## 📝 Development Notes

- Always run tests before committing
- Use meaningful commit messages
- Follow the established code style
- Update documentation for new features
- Keep dependencies up to date
