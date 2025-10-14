# Atlas Study - Development Roadmap

## 🎯 Project Overview

Atlas Study is a unified student productivity app that syncs assignments, tasks, and events across LMS (Canvas/Blackboard) and calendars (Google/iOS).

## 📋 Current Status

### ✅ Completed
- [x] Project structure setup
- [x] Flutter app foundation with Riverpod state management
- [x] FastAPI backend with SQLAlchemy models
- [x] Database schema design (User, Task, Course, Session)
- [x] Basic API endpoints structure
- [x] Black and white UI theme with colored course chips
- [x] Local SQLite database with Drift
- [x] Authentication schemas and services
- [x] Development environment configuration

### 🔄 In Progress
- [ ] Flutter SDK installation and PATH setup
- [ ] Backend dependencies installation
- [ ] Database migrations setup

### ⏳ Pending
- [ ] Authentication system implementation
- [ ] Task CRUD operations
- [ ] Timer functionality
- [ ] Calendar integration
- [ ] LMS integration

## 🚀 Development Phases

### Phase 1: Core MVP (Weeks 2-4)

#### Week 2: Foundation & Authentication
**Goals:**
- Complete Flutter SDK setup
- Implement user authentication (email/password)
- Set up JWT token management
- Create user registration/login flow

**Tasks:**
1. **Flutter Setup**
   - [ ] Install Flutter SDK and add to PATH
   - [ ] Run `flutter doctor` and fix any issues
   - [ ] Test on iOS Simulator and Android Emulator
   - [ ] Run code generation: `flutter packages pub run build_runner build`

2. **Backend Setup**
   - [ ] Create Python virtual environment
   - [ ] Install all dependencies from requirements.txt
   - [ ] Set up local PostgreSQL database
   - [ ] Run initial database migrations
   - [ ] Test API endpoints with Postman/curl

3. **Authentication System**
   - [ ] Implement password hashing with Argon2id
   - [ ] Create JWT token generation and validation
   - [ ] Build user registration endpoint
   - [ ] Build user login endpoint
   - [ ] Implement refresh token mechanism
   - [ ] Add email verification (basic)

**Deliverables:**
- Working authentication API
- User registration/login in Flutter app
- Basic user profile management

#### Week 3: Task Management Core
**Goals:**
- Implement task CRUD operations
- Create course management system
- Build basic task list UI
- Add task creation and editing

**Tasks:**
1. **Backend API**
   - [ ] Complete task CRUD endpoints
   - [ ] Implement course management endpoints
   - [ ] Add task filtering and sorting
   - [ ] Create task search functionality

2. **Flutter App**
   - [ ] Create task list UI with course color coding
   - [ ] Build task creation/edit forms
   - [ ] Implement course selection with color picker
   - [ ] Add task status management (todo, in-progress, completed)
   - [ ] Create task detail view

3. **Local Storage**
   - [ ] Set up Drift database operations
   - [ ] Implement offline-first data sync
   - [ ] Add data persistence

**Deliverables:**
- Complete task management system
- Course management with color coding
- Offline-capable task list

#### Week 4: Timer & Sessions
**Goals:**
- Build Pomodoro-style timer
- Implement session tracking
- Add local notifications
- Create productivity analytics

**Tasks:**
1. **Timer Implementation**
   - [ ] Create timer widget with start/pause/stop
   - [ ] Implement background timer persistence
   - [ ] Add break timer functionality
   - [ ] Handle app lifecycle (background/foreground)

2. **Session Tracking**
   - [ ] Log study sessions to database
   - [ ] Track session duration and breaks
   - [ ] Add session notes and focus scores
   - [ ] Calculate productivity metrics

3. **Notifications**
   - [ ] Set up local notifications for timer
   - [ ] Add reminder notifications
   - [ ] Implement notification scheduling

**Deliverables:**
- Working Pomodoro timer
- Session tracking and analytics
- Local notification system

### Phase 2: Integration (Weeks 5-7)

#### Week 5: Google Calendar Integration
**Goals:**
- Connect Google Calendar API
- Implement two-way sync
- Handle calendar conflicts

**Tasks:**
1. **Google OAuth Setup**
   - [ ] Create Google Cloud project
   - [ ] Set up OAuth 2.0 credentials
   - [ ] Implement Google Sign-In in Flutter
   - [ ] Handle OAuth flow in backend

2. **Calendar Sync**
   - [ ] Read Google Calendar events
   - [ ] Create events from tasks
   - [ ] Update events when tasks change
   - [ ] Handle sync conflicts

3. **Watch Channels**
   - [ ] Set up Google Calendar watch channels
   - [ ] Implement webhook endpoints
   - [ ] Handle real-time updates

**Deliverables:**
- Google Calendar integration
- Two-way sync functionality
- Real-time updates

#### Week 6: Canvas LMS Integration
**Goals:**
- Connect to Canvas API
- Import assignments automatically
- Sync assignment updates

**Tasks:**
1. **Canvas OAuth**
   - [ ] Implement Canvas OAuth flow
   - [ ] Handle Canvas authentication
   - [ ] Store Canvas credentials securely

2. **Assignment Import**
   - [ ] Fetch assignments from Canvas
   - [ ] Parse assignment data
   - [ ] Create tasks from assignments
   - [ ] Map Canvas courses to local courses

3. **Sync Updates**
   - [ ] Periodic assignment updates
   - [ ] Handle assignment changes
   - [ ] Update local tasks when assignments change

**Deliverables:**
- Canvas LMS integration
- Automatic assignment import
- Assignment sync updates

#### Week 7: Advanced Sync & Polish
**Goals:**
- Implement conflict resolution
- Add sync status indicators
- Optimize performance

**Tasks:**
1. **Conflict Resolution**
   - [ ] Handle sync conflicts
   - [ ] Implement merge strategies
   - [ ] Add conflict resolution UI

2. **Sync Status**
   - [ ] Show sync status in UI
   - [ ] Handle offline/online states
   - [ ] Add sync progress indicators

3. **Performance**
   - [ ] Optimize database queries
   - [ ] Implement caching
   - [ ] Add pagination

**Deliverables:**
- Robust sync system
- Conflict resolution
- Performance optimizations

### Phase 3: Polish & Advanced Features (Weeks 8-10)

#### Week 8: Adaptive Reminders
**Goals:**
- Implement duration estimation algorithm
- Add smart notification scheduling
- Create reminder preferences

**Tasks:**
1. **Duration Estimation**
   - [ ] Calculate average durations per course/type
   - [ ] Implement moving average algorithm
   - [ ] Add confidence scoring

2. **Smart Reminders**
   - [ ] Schedule reminders based on estimates
   - [ ] Handle sleep window preferences
   - [ ] Add escalation reminders

3. **Reminder Management**
   - [ ] User preference settings
   - [ ] Reminder intensity options
   - [ ] Custom reminder times

**Deliverables:**
- Adaptive reminder system
- Duration estimation algorithm
- Smart notification scheduling

#### Week 9: Cross-Platform Features
**Goals:**
- Desktop app functionality
- iOS/Android widgets
- Background sync

**Tasks:**
1. **Desktop App**
   - [ ] Create desktop-specific UI
   - [ ] Add system tray integration
   - [ ] Implement always-on-top panel

2. **Mobile Widgets**
   - [ ] iOS WidgetKit integration
   - [ ] Android AppWidget
   - [ ] Quick action widgets

3. **Background Sync**
   - [ ] iOS Background App Refresh
   - [ ] Android WorkManager
   - [ ] Periodic sync jobs

**Deliverables:**
- Cross-platform features
- Mobile widgets
- Background sync

#### Week 10: Final Polish & Launch Prep
**Goals:**
- Bug fixes and optimization
- App store preparation
- Documentation and testing

**Tasks:**
1. **Quality Assurance**
   - [ ] Comprehensive testing
   - [ ] Bug fixes and optimization
   - [ ] Performance tuning

2. **App Store Prep**
   - [ ] Create app store listings
   - [ ] Generate app icons and screenshots
   - [ ] Prepare release notes

3. **Documentation**
   - [ ] User documentation
   - [ ] Developer documentation
   - [ ] API documentation

**Deliverables:**
- Production-ready app
- App store submissions
- Complete documentation

## 🛠️ Technical Milestones

### Backend Milestones
- [ ] **M1**: Authentication API working
- [ ] **M2**: Task CRUD API complete
- [ ] **M3**: Database migrations automated
- [ ] **M4**: Google Calendar integration
- [ ] **M5**: Canvas LMS integration
- [ ] **M6**: Background sync jobs
- [ ] **M7**: Production deployment

### Frontend Milestones
- [ ] **M1**: Authentication flow complete
- [ ] **M2**: Task management UI
- [ ] **M3**: Timer functionality
- [ ] **M4**: Calendar sync UI
- [ ] **M5**: LMS integration UI
- [ ] **M6**: Cross-platform features
- [ ] **M7**: App store ready

## 📊 Success Metrics

### Development Metrics
- Code coverage > 80%
- API response time < 200ms
- App startup time < 3 seconds
- Crash rate < 0.1%

### User Experience Metrics
- Task creation time < 30 seconds
- Sync completion time < 10 seconds
- Timer accuracy ± 1 second
- Offline functionality 100%

## 🚨 Risk Mitigation

### Technical Risks
1. **Calendar Sync Complexity**
   - Risk: Google Calendar API limitations
   - Mitigation: Start with read-only, add write later

2. **Background Processing**
   - Risk: Platform restrictions on background tasks
   - Mitigation: Use simple polling before complex webhooks

3. **Cross-Platform Differences**
   - Risk: Platform-specific limitations
   - Mitigation: Test on all platforms early

### Timeline Risks
1. **Scope Creep**
   - Risk: Adding too many features
   - Mitigation: Stick to 3-milestone plan

2. **Integration Delays**
   - Risk: Third-party API issues
   - Mitigation: Have fallback plans for each integration

3. **Testing Overhead**
   - Risk: Insufficient testing time
   - Mitigation: Automate testing from the beginning

## 📝 Next Immediate Actions

### This Week (Priority Order)
1. **Install Flutter SDK and add to PATH**
   ```bash
   # Download Flutter from https://flutter.dev/docs/get-started/install/macos
   # Extract to ~/development/flutter/
   export PATH="$PATH:~/development/flutter/bin"
   source ~/.zshrc
   flutter doctor
   ```

2. **Set up Backend Environment**
   ```bash
   cd atlas-backend
   python -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```

3. **Create Local Database**
   ```bash
   createdb atlas_study_dev
   cp env.example .env
   # Edit .env with your database URL
   ```

4. **Test Basic Setup**
   ```bash
   # Backend
   cd atlas-backend
   uvicorn app.main:app --reload
   
   # Flutter
   cd atlas_study_app
   flutter pub get
   flutter packages pub run build_runner build
   flutter run
   ```

5. **Start Phase 1 Development**
   - Begin authentication system implementation
   - Create first database migration
   - Build basic login UI

### Success Criteria for This Week
- [ ] Flutter app runs without errors
- [ ] Backend API starts successfully
- [ ] Database connection works
- [ ] Basic authentication endpoint responds
- [ ] First user can register and login

## 📞 Getting Help

- **Flutter Issues**: [Flutter Documentation](https://flutter.dev/docs)
- **Backend Issues**: [FastAPI Documentation](https://fastapi.tiangolo.com/)
- **Database Issues**: [SQLAlchemy Documentation](https://docs.sqlalchemy.org/)
- **GCP Issues**: [Google Cloud Documentation](https://cloud.google.com/docs)

## 🎉 Celebration Milestones

- 🎯 **Week 2**: First successful login
- 🎯 **Week 4**: First completed study session
- 🎯 **Week 6**: First Canvas assignment imported
- 🎯 **Week 8**: First Google Calendar event synced
- 🎯 **Week 10**: App store submission ready
