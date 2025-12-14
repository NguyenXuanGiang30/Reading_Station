# Reading Station Backend - Complete File Structure

## Root Level Files
```
reading-station-backend/
├── pom.xml                           ✅ (Created)
├── README.md
├── docker-compose.yml
├── .env.example
└── .gitignore
```

---

## 1. Configuration Layer (`config/`)

### Location: `src/main/java/com/tramdoc/api/config/`
```
SecurityConfig.java          # Spring Security setup
JwtConfig.java              # JWT token configuration
SwaggerConfig.java          # API documentation (Swagger/OpenAPI)
CorsConfig.java             # CORS policy
RedisConfig.java            # Cache configuration
AsyncConfig.java            # Async processing config
FirebaseConfig.java         # Push notifications (FR3.3)
S3Config.java               # File storage (book covers, audio)
WebConfig.java              # General web configuration
```

---

## 2. Security Layer (`security/`)

### Location: `src/main/java/com/tramdoc/api/security/`
```
JwtTokenProvider.java       # JWT generation/validation
JwtAuthenticationFilter.java # Request filter
UserDetailsServiceImpl.java  # Load user details
SecurityUtils.java           # Security helper utilities
AuthenticationEntryPointImpl.java  # Handle auth errors
```

---

## 3. Exception Handling (`exception/`)

### Location: `src/main/java/com/tramdoc/api/exception/`
```
GlobalExceptionHandler.java  # @ControllerAdvice
ResourceNotFoundException.java
BadRequestException.java
UnauthorizedException.java
ForbiddenException.java
DuplicateResourceException.java
ErrorResponse.java           # Standard error format
ApiError.java               # API error DTO
```

---

## 4. Common Utilities (`common/`)

### 4.1 DTOs
Location: `src/main/java/com/tramdoc/api/common/dto/`
```
PageResponse.java           # Pagination wrapper
ApiResponse.java            # Standard API response
```

### 4.2 Constants
Location: `src/main/java/com/tramdoc/api/common/constants/`
```
AppConstants.java
ErrorMessages.java
CacheConstants.java
FileConstants.java
```

### 4.3 Utils
Location: `src/main/java/com/tramdoc/api/common/utils/`
```
DateUtils.java
ValidationUtils.java
SlugUtils.java
StringUtils.java
FileUtils.java
```

---

## 5. Domain Entities (`domain/`)

### 5.1 User Domain
Location: `src/main/java/com/tramdoc/api/domain/user/`
```
User.java                   # @Entity - Main user
Role.java                   # User roles
UserSettings.java           # FR12: Personalization settings
```

### 5.2 Library Domain (FR1)
Location: `src/main/java/com/tramdoc/api/domain/library/`
```
Book.java                   # Book entity
UserBook.java               # User's book instance
CustomShelf.java            # FR12.2: Custom shelves
ReadingSession.java         # FR6.2: Time tracking
BookCategory.java           # Book categories/genres
```

### 5.3 Note Domain (FR2)
Location: `src/main/java/com/tramdoc/api/domain/note/`
```
Note.java                   # Text notes
AudioNote.java              # FR7.1: Voice notes
KeyTakeaway.java            # FR2.3: Key ideas
NoteTag.java                # Note tagging
```

### 5.4 Review Domain (FR3)
Location: `src/main/java/com/tramdoc/api/domain/review/`
```
Flashcard.java              # Flashcard entity
ReviewHistory.java          # Track review sessions
ReviewSchedule.java         # Spaced repetition scheduling
```

### 5.5 Social Domain (FR4)
Location: `src/main/java/com/tramdoc/api/domain/social/`
```
Friendship.java             # Friend relationships
Activity.java               # Feed activities
BookReview.java             # FR10.1: Public reviews
ReadingList.java            # FR8.2: Collections
Comment.java                # Comments on reviews
Like.java                   # Likes on content
```

### 5.6 Gamification Domain (FR5)
Location: `src/main/java/com/tramdoc/api/domain/gamification/`
```
Achievement.java            # Achievement definitions
UserAchievement.java        # User's unlocked achievements
ReadingStreak.java          # Streak tracking
ReadingGoal.java            # User reading goals
LeaderboardEntry.java       # Leaderboard rankings
Badge.java                  # Achievement badges
```

### 5.7 Book Club Domain (FR8.3 & FR10)
Location: `src/main/java/com/tramdoc/api/domain/bookclub/`
```
BookClub.java               # Book club entity
ClubMember.java             # Club membership
ClubDiscussion.java         # Discussion threads
ReadingChallenge.java       # Group challenges
ClubEvent.java              # Club events
```

### 5.8 Analytics Domain (FR6)
Location: `src/main/java/com/tramdoc/api/domain/analytics/`
```
ReadingStats.java           # Reading statistics
UserAnalytics.java          # User analytics data
DailyActivity.java          # Daily activity tracking
```

---

## 6. Repository Layer (`repository/`)

### 6.1 User Repositories
Location: `src/main/java/com/tramdoc/api/repository/user/`
```
UserRepository.java
RoleRepository.java
UserSettingsRepository.java
```

### 6.2 Library Repositories
Location: `src/main/java/com/tramdoc/api/repository/library/`
```
BookRepository.java
UserBookRepository.java
CustomShelfRepository.java
ReadingSessionRepository.java
BookCategoryRepository.java
```

### 6.3 Note Repositories
Location: `src/main/java/com/tramdoc/api/repository/note/`
```
NoteRepository.java
AudioNoteRepository.java
KeyTakeawayRepository.java
NoteTagRepository.java
```

### 6.4 Review Repositories
Location: `src/main/java/com/tramdoc/api/repository/review/`
```
FlashcardRepository.java
ReviewHistoryRepository.java
ReviewScheduleRepository.java
```

### 6.5 Social Repositories
Location: `src/main/java/com/tramdoc/api/repository/social/`
```
FriendshipRepository.java
ActivityRepository.java
BookReviewRepository.java
ReadingListRepository.java
CommentRepository.java
LikeRepository.java
```

### 6.6 Gamification Repositories
Location: `src/main/java/com/tramdoc/api/repository/gamification/`
```
AchievementRepository.java
UserAchievementRepository.java
ReadingStreakRepository.java
ReadingGoalRepository.java
LeaderboardRepository.java
BadgeRepository.java
```

### 6.7 Book Club Repositories
Location: `src/main/java/com/tramdoc/api/repository/bookclub/`
```
BookClubRepository.java
ClubMemberRepository.java
ClubDiscussionRepository.java
ReadingChallengeRepository.java
ClubEventRepository.java
```

### 6.8 Analytics Repositories
Location: `src/main/java/com/tramdoc/api/repository/analytics/`
```
ReadingStatsRepository.java
UserAnalyticsRepository.java
DailyActivityRepository.java
```

---

## 7. DTO Layer (`dto/`)

### 7.1 Auth DTOs
Location: `src/main/java/com/tramdoc/api/dto/auth/`
```
LoginRequest.java
RegisterRequest.java
AuthResponse.java
TokenRefreshRequest.java
TokenRefreshResponse.java
PasswordResetRequest.java
```

### 7.2 Library DTOs
Location: `src/main/java/com/tramdoc/api/dto/library/`
```
BookDTO.java
CreateBookRequest.java
UpdateBookRequest.java
UpdateProgressRequest.java
BookDetailResponse.java
CustomShelfDTO.java
CreateShelfRequest.java
ReadingSessionDTO.java
```

### 7.3 Note DTOs
Location: `src/main/java/com/tramdoc/api/dto/note/`
```
NoteDTO.java
CreateNoteRequest.java
UpdateNoteRequest.java
CreateVoiceNoteRequest.java
KeyTakeawayDTO.java
NoteTagDTO.java
```

### 7.4 Review DTOs
Location: `src/main/java/com/tramdoc/api/dto/review/`
```
FlashcardDTO.java
CreateFlashcardRequest.java
UpdateFlashcardRequest.java
ReviewResultRequest.java
DueFlashcardsResponse.java
ReviewStatsDTO.java
```

### 7.5 Social DTOs
Location: `src/main/java/com/tramdoc/api/dto/social/`
```
FriendDTO.java
FriendRequestDTO.java
ActivityDTO.java
FeedResponse.java
BookReviewDTO.java
CreateReviewRequest.java
ReadingListDTO.java
CreateListRequest.java
CommentDTO.java
```

### 7.6 Gamification DTOs
Location: `src/main/java/com/tramdoc/api/dto/gamification/`
```
AchievementDTO.java
UserAchievementDTO.java
StreakDTO.java
ReadingGoalDTO.java
CreateGoalRequest.java
UpdateGoalRequest.java
LeaderboardResponse.java
BadgeDTO.java
```

### 7.7 Book Club DTOs
Location: `src/main/java/com/tramdoc/api/dto/bookclub/`
```
BookClubDTO.java
CreateClubRequest.java
UpdateClubRequest.java
ClubMemberDTO.java
DiscussionDTO.java
CreateDiscussionRequest.java
ChallengeDTO.java
CreateChallengeRequest.java
```

### 7.8 Analytics DTOs
Location: `src/main/java/com/tramdoc/api/dto/analytics/`
```
ReadingStatsResponse.java
HeatmapResponse.java
InsightsResponse.java
DashboardResponse.java
WeeklyStatsDTO.java
MonthlyStatsDTO.java
```

---

## 8. Mapper Layer (`mapper/`)

### Location: `src/main/java/com/tramdoc/api/mapper/`
```
UserMapper.java
BookMapper.java
NoteMapper.java
FlashcardMapper.java
ActivityMapper.java
AchievementMapper.java
BookClubMapper.java
AnalyticsMapper.java
```

---

## 9. Service Layer (`service/`)

### 9.1 Auth Services
Location: `src/main/java/com/tramdoc/api/service/auth/`
```
AuthService.java
AuthServiceImpl.java
TokenService.java
TokenServiceImpl.java
```

### 9.2 Library Services
Location: `src/main/java/com/tramdoc/api/service/library/`
```
BookService.java
BookServiceImpl.java
UserBookService.java
UserBookServiceImpl.java
CustomShelfService.java
CustomShelfServiceImpl.java
GoogleBooksService.java          # FR1: External API integration
GoogleBooksServiceImpl.java
BarcodeService.java              # FR1.1: Barcode lookup
BarcodeServiceImpl.java
```

### 9.3 Note Services
Location: `src/main/java/com/tramdoc/api/service/note/`
```
NoteService.java
NoteServiceImpl.java
OCRService.java                  # FR2.2: OCR processing
OCRServiceImpl.java
AudioNoteService.java            # FR7.1: Voice notes
AudioNoteServiceImpl.java
TTSService.java                  # FR7.2: Text-to-speech
TTSServiceImpl.java
```

### 9.4 Review Services
Location: `src/main/java/com/tramdoc/api/service/review/`
```
FlashcardService.java
FlashcardServiceImpl.java
ReviewService.java
ReviewServiceImpl.java
SpacedRepetitionService.java     # FR3.2: SM-2 algorithm
SpacedRepetitionServiceImpl.java
```

### 9.5 Social Services
Location: `src/main/java/com/tramdoc/api/service/social/`
```
FriendshipService.java
FriendshipServiceImpl.java
ActivityService.java
ActivityServiceImpl.java
FeedService.java
FeedServiceImpl.java
BookReviewService.java
BookReviewServiceImpl.java
ReadingListService.java
ReadingListServiceImpl.java
```

### 9.6 Gamification Services
Location: `src/main/java/com/tramdoc/api/service/gamification/`
```
AchievementService.java
AchievementServiceImpl.java
StreakService.java
StreakServiceImpl.java
GoalService.java
GoalServiceImpl.java
LeaderboardService.java
LeaderboardServiceImpl.java
```

### 9.7 Book Club Services
Location: `src/main/java/com/tramdoc/api/service/bookclub/`
```
BookClubService.java
BookClubServiceImpl.java
DiscussionService.java
DiscussionServiceImpl.java
ChallengeService.java
ChallengeServiceImpl.java
```

### 9.8 Analytics Services
Location: `src/main/java/com/tramdoc/api/service/analytics/`
```
AnalyticsService.java
AnalyticsServiceImpl.java
StatsCalculationService.java
StatsCalculationServiceImpl.java
InsightsService.java
InsightsServiceImpl.java
```

### 9.9 Notification Services
Location: `src/main/java/com/tramdoc/api/service/notification/`
```
NotificationService.java         # FR3.3: Push notifications
NotificationServiceImpl.java
EmailService.java
EmailServiceImpl.java
PushNotificationService.java
PushNotificationServiceImpl.java
```

### 9.10 Integration Services
Location: `src/main/java/com/tramdoc/api/service/integration/`
```
KindleIntegrationService.java    # FR9.1
KindleIntegrationServiceImpl.java
BookstoreService.java            # FR9.2
BookstoreServiceImpl.java
ExportService.java               # FR9.4
ExportServiceImpl.java
```

### 9.11 AI Services
Location: `src/main/java/com/tramdoc/api/service/ai/`
```
AISummaryService.java            # FR11.1: Smart summarization
AISummaryServiceImpl.java
AIQuestionService.java           # FR11.2: Q&A
AIQuestionServiceImpl.java
AITaggingService.java            # FR11.3: Auto-tagging
AITaggingServiceImpl.java
```

### 9.12 Storage Services
Location: `src/main/java/com/tramdoc/api/service/storage/`
```
FileStorageService.java          # S3/local file storage
FileStorageServiceImpl.java
ImageService.java                # Image processing
ImageServiceImpl.java
```

---

## 10. Controller Layer (`controller/`)

### 10.1 Auth Controller
Location: `src/main/java/com/tramdoc/api/controller/`
```
AuthController.java              # POST /api/auth/login, /register
```

### 10.2 Library Controllers
Location: `src/main/java/com/tramdoc/api/controller/library/`
```
BookController.java              # CRUD for books
LibraryController.java           # User's library management
ShelfController.java             # Custom shelves
ReadingSessionController.java    # Reading sessions
```

### 10.3 Note Controllers
Location: `src/main/java/com/tramdoc/api/controller/note/`
```
NoteController.java
AudioNoteController.java
KeyTakeawayController.java
```

### 10.4 Review Controllers
Location: `src/main/java/com/tramdoc/api/controller/review/`
```
FlashcardController.java
ReviewController.java
ReviewScheduleController.java
```

### 10.5 Social Controllers
Location: `src/main/java/com/tramdoc/api/controller/social/`
```
FriendController.java
FeedController.java
ReviewController.java
ReadingListController.java
CommentController.java
```

### 10.6 Gamification Controllers
Location: `src/main/java/com/tramdoc/api/controller/gamification/`
```
AchievementController.java
StreakController.java
GoalController.java
LeaderboardController.java
```

### 10.7 Book Club Controllers
Location: `src/main/java/com/tramdoc/api/controller/bookclub/`
```
BookClubController.java
DiscussionController.java
ChallengeController.java
```

### 10.8 Analytics Controllers
Location: `src/main/java/com/tramdoc/api/controller/analytics/`
```
AnalyticsController.java
StatsController.java
DashboardController.java
```

### 10.9 Integration Controllers
Location: `src/main/java/com/tramdoc/api/controller/integration/`
```
KindleController.java
ExportController.java
```

### 10.10 AI Controllers
Location: `src/main/java/com/tramdoc/api/controller/ai/`
```
AIAssistantController.java
```

---

## 11. Scheduler Layer (`scheduler/`)

### Location: `src/main/java/com/tramdoc/api/scheduler/`
```
DailyReviewReminderJob.java      # FR3.3: Daily notifications
StreakResetJob.java              # FR5: Reset missed streaks
AnalyticsAggregationJob.java     # FR6: Daily stats aggregation
GoalCheckJob.java                # FR5: Check goal progress
LeaderboardUpdateJob.java        # Update leaderboards
```

---

## 12. Event Layer (`event/`)

### 12.1 User Events
Location: `src/main/java/com/tramdoc/api/event/user/`
```
UserRegisteredEvent.java
UserProfileUpdatedEvent.java
```

### 12.2 Library Events
Location: `src/main/java/com/tramdoc/api/event/library/`
```
BookAddedEvent.java
BookFinishedEvent.java
ReadingProgressEvent.java
BookRemovedEvent.java
```

### 12.3 Note Events
Location: `src/main/java/com/tramdoc/api/event/note/`
```
NoteCreatedEvent.java
NoteUpdatedEvent.java
AudioNoteCreatedEvent.java
```

### 12.4 Review Events
Location: `src/main/java/com/tramdoc/api/event/review/`
```
FlashcardReviewedEvent.java
ReviewCompletedEvent.java
```

### 12.5 Gamification Events
Location: `src/main/java/com/tramdoc/api/event/gamification/`
```
AchievementUnlockedEvent.java
StreakUpdatedEvent.java
GoalCompletedEvent.java
```

---

## 13. Listener Layer (`listener/`)

### Location: `src/main/java/com/tramdoc/api/listener/`
```
AchievementListener.java         # Listen for achievement triggers
ActivityListener.java            # Create feed activities
NotificationListener.java        # Send notifications
AnalyticsListener.java           # Track user actions
```

---

## 14. Resources (`resources/`)

### 14.1 Configuration Files
Location: `src/main/resources/`
```
application.yml                  ✅ (Created)
application-dev.yml              ✅ (Created)
application-prod.yml             ✅ (Created)
banner.txt                       # Spring Boot banner
logback-spring.xml              # Logging configuration
```

### 14.2 Database Migrations
Location: `src/main/resources/db/migration/`
```
V1__init_schema.sql
V2__create_user_tables.sql
V3__create_library_tables.sql
V4__create_note_tables.sql
V5__create_review_tables.sql
V6__create_social_tables.sql
V7__create_gamification_tables.sql
V8__create_bookclub_tables.sql
V9__create_analytics_tables.sql
V10__create_indexes.sql
V11__insert_default_data.sql
```

### 14.3 Static Resources
Location: `src/main/resources/static/achievements/`
```
beginner.png
first-book.png
book-reviewer.png
social-butterfly.png
reading-streak-7.png
reading-streak-30.png
bookworm.png
speed-reader.png
```

### 14.4 Email Templates
Location: `src/main/resources/templates/`
```
welcome-email.html
daily-review-reminder.html
achievement-unlocked.html
password-reset-email.html
friend-request.html
club-invitation.html
```

---

## 15. Test Files (`test/`)

### Location: `src/test/java/com/tramdoc/api/`
```
ReadingStationApplicationTests.java

controller/
  AuthControllerTest.java
  BookControllerTest.java
  NoteControllerTest.java
  FlashcardControllerTest.java

service/
  AuthServiceTest.java
  BookServiceTest.java
  NoteServiceTest.java
  ReviewServiceTest.java

repository/
  UserRepositoryTest.java
  BookRepositoryTest.java
  NoteRepositoryTest.java

integration/
  AuthIntegrationTest.java
  LibraryIntegrationTest.java
```

---

## 16. Documentation Files (`docs/`)

### Location: `docs/api/`
```
swagger.yaml
postman-collection.json
api-endpoints.md
```

### Location: `docs/architecture/`
```
database-design.md
system-architecture.md
api-design-principles.md
file-structure.md               ✅ (This file)
```

---

## Summary Statistics

**Total Files to Create:**
- Configuration: ~10 files
- Domain Entities: ~30 files
- Repositories: ~30 files
- Services: ~50+ files (with interfaces and implementations)
- DTOs: ~60+ files
- Controllers: ~20 files
- Mappers: ~10 files
- Events & Listeners: ~20 files
- Schedulers: ~5 files
- Utilities & Exceptions: ~15 files
- Database Migrations: ~11 SQL files
- Templates & Resources: ~15 files
- Tests: ~20+ files

**Grand Total: ~300+ files**
