# Script Part 2: Services, DTOs, Controllers, Mappers, Events, Listeners, Schedulers
# Run this script from the reading_station_backend directory

$basePath = "reading-station-api\src\main\java\com\tramdoc\api"

function Create-JavaFile {
    param(
        [string]$relativePath,
        [string]$packageName,
        [string]$className,
        [string]$comment = "TODO: Implement this class"
    )
    
    $fullPath = Join-Path $basePath $relativePath
    $dir = Split-Path -Parent $fullPath
    
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Force -Path $dir | Out-Null
    }
    
    $content = @"
package com.tramdoc.api.$packageName;

/**
 * $className
 * $comment
 */
public class $className {
    // $comment
}
"@
    
    Set-Content -Path $fullPath -Value $content -Encoding UTF8
    Write-Host "Created: $fullPath"
}

function Create-JavaInterface {
    param(
        [string]$relativePath,
        [string]$packageName,
        [string]$interfaceName,
        [string]$comment = "TODO: Implement this interface"
    )
    
    $fullPath = Join-Path $basePath $relativePath
    $dir = Split-Path -Parent $fullPath
    
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Force -Path $dir | Out-Null
    }
    
    $content = @"
package com.tramdoc.api.$packageName;

/**
 * $interfaceName
 * $comment
 */
public interface $interfaceName {
    // $comment
}
"@
    
    Set-Content -Path $fullPath -Value $content -Encoding UTF8
    Write-Host "Created: $fullPath"
}

Write-Host "=== Creating Services ===" -ForegroundColor Green

# Auth Services
Create-JavaInterface "service\auth\AuthService.java" "service.auth" "AuthService" "Auth service interface"
Create-JavaFile "service\auth\AuthServiceImpl.java" "service.auth" "AuthServiceImpl" "Auth service implementation"
Create-JavaInterface "service\auth\TokenService.java" "service.auth" "TokenService" "Token service interface"
Create-JavaFile "service\auth\TokenServiceImpl.java" "service.auth" "TokenServiceImpl" "Token service implementation"

# Library Services
Create-JavaInterface "service\library\BookService.java" "service.library" "BookService" "Book service interface"
Create-JavaFile "service\library\BookServiceImpl.java" "service.library" "BookServiceImpl" "Book service implementation"
Create-JavaInterface "service\library\UserBookService.java" "service.library" "UserBookService" "User book service interface"
Create-JavaFile "service\library\UserBookServiceImpl.java" "service.library" "UserBookServiceImpl" "User book service implementation"
Create-JavaInterface "service\library\CustomShelfService.java" "service.library" "CustomShelfService" "Custom shelf service interface"
Create-JavaFile "service\library\CustomShelfServiceImpl.java" "service.library" "CustomShelfServiceImpl" "Custom shelf service implementation"
Create-JavaInterface "service\library\GoogleBooksService.java" "service.library" "GoogleBooksService" "Google Books API service - FR1"
Create-JavaFile "service\library\GoogleBooksServiceImpl.java" "service.library" "GoogleBooksServiceImpl" "Google Books API service implementation"
Create-JavaInterface "service\library\BarcodeService.java" "service.library" "BarcodeService" "Barcode lookup service - FR1.1"
Create-JavaFile "service\library\BarcodeServiceImpl.java" "service.library" "BarcodeServiceImpl" "Barcode lookup service implementation"

# Note Services
Create-JavaInterface "service\note\NoteService.java" "service.note" "NoteService" "Note service interface"
Create-JavaFile "service\note\NoteServiceImpl.java" "service.note" "NoteServiceImpl" "Note service implementation"
Create-JavaInterface "service\note\OCRService.java" "service.note" "OCRService" "OCR service interface - FR2.2"
Create-JavaFile "service\note\OCRServiceImpl.java" "service.note" "OCRServiceImpl" "OCR service implementation"
Create-JavaInterface "service\note\AudioNoteService.java" "service.note" "AudioNoteService" "Audio note service interface - FR7.1"
Create-JavaFile "service\note\AudioNoteServiceImpl.java" "service.note" "AudioNoteServiceImpl" "Audio note service implementation"
Create-JavaInterface "service\note\TTSService.java" "service.note" "TTSService" "Text-to-speech service interface - FR7.2"
Create-JavaFile "service\note\TTSServiceImpl.java" "service.note" "TTSServiceImpl" "Text-to-speech service implementation"

# Review Services
Create-JavaInterface "service\review\FlashcardService.java" "service.review" "FlashcardService" "Flashcard service interface"
Create-JavaFile "service\review\FlashcardServiceImpl.java" "service.review" "FlashcardServiceImpl" "Flashcard service implementation"
Create-JavaInterface "service\review\ReviewService.java" "service.review" "ReviewService" "Review service interface"
Create-JavaFile "service\review\ReviewServiceImpl.java" "service.review" "ReviewServiceImpl" "Review service implementation"
Create-JavaInterface "service\review\SpacedRepetitionService.java" "service.review" "SpacedRepetitionService" "Spaced repetition service - SM-2 algorithm - FR3.2"
Create-JavaFile "service\review\SpacedRepetitionServiceImpl.java" "service.review" "SpacedRepetitionServiceImpl" "Spaced repetition service implementation"

# Social Services
Create-JavaInterface "service\social\FriendshipService.java" "service.social" "FriendshipService" "Friendship service interface"
Create-JavaFile "service\social\FriendshipServiceImpl.java" "service.social" "FriendshipServiceImpl" "Friendship service implementation"
Create-JavaInterface "service\social\ActivityService.java" "service.social" "ActivityService" "Activity service interface"
Create-JavaFile "service\social\ActivityServiceImpl.java" "service.social" "ActivityServiceImpl" "Activity service implementation"
Create-JavaInterface "service\social\FeedService.java" "service.social" "FeedService" "Feed service interface"
Create-JavaFile "service\social\FeedServiceImpl.java" "service.social" "FeedServiceImpl" "Feed service implementation"
Create-JavaInterface "service\social\BookReviewService.java" "service.social" "BookReviewService" "Book review service interface"
Create-JavaFile "service\social\BookReviewServiceImpl.java" "service.social" "BookReviewServiceImpl" "Book review service implementation"
Create-JavaInterface "service\social\ReadingListService.java" "service.social" "ReadingListService" "Reading list service interface"
Create-JavaFile "service\social\ReadingListServiceImpl.java" "service.social" "ReadingListServiceImpl" "Reading list service implementation"

# Gamification Services
Create-JavaInterface "service\gamification\AchievementService.java" "service.gamification" "AchievementService" "Achievement service interface"
Create-JavaFile "service\gamification\AchievementServiceImpl.java" "service.gamification" "AchievementServiceImpl" "Achievement service implementation"
Create-JavaInterface "service\gamification\StreakService.java" "service.gamification" "StreakService" "Streak service interface"
Create-JavaFile "service\gamification\StreakServiceImpl.java" "service.gamification" "StreakServiceImpl" "Streak service implementation"
Create-JavaInterface "service\gamification\GoalService.java" "service.gamification" "GoalService" "Goal service interface"
Create-JavaFile "service\gamification\GoalServiceImpl.java" "service.gamification" "GoalServiceImpl" "Goal service implementation"
Create-JavaInterface "service\gamification\LeaderboardService.java" "service.gamification" "LeaderboardService" "Leaderboard service interface"
Create-JavaFile "service\gamification\LeaderboardServiceImpl.java" "service.gamification" "LeaderboardServiceImpl" "Leaderboard service implementation"

# BookClub Services
Create-JavaInterface "service\bookclub\BookClubService.java" "service.bookclub" "BookClubService" "Book club service interface"
Create-JavaFile "service\bookclub\BookClubServiceImpl.java" "service.bookclub" "BookClubServiceImpl" "Book club service implementation"
Create-JavaInterface "service\bookclub\DiscussionService.java" "service.bookclub" "DiscussionService" "Discussion service interface"
Create-JavaFile "service\bookclub\DiscussionServiceImpl.java" "service.bookclub" "DiscussionServiceImpl" "Discussion service implementation"
Create-JavaInterface "service\bookclub\ChallengeService.java" "service.bookclub" "ChallengeService" "Challenge service interface"
Create-JavaFile "service\bookclub\ChallengeServiceImpl.java" "service.bookclub" "ChallengeServiceImpl" "Challenge service implementation"

# Analytics Services
Create-JavaInterface "service\analytics\AnalyticsService.java" "service.analytics" "AnalyticsService" "Analytics service interface"
Create-JavaFile "service\analytics\AnalyticsServiceImpl.java" "service.analytics" "AnalyticsServiceImpl" "Analytics service implementation"
Create-JavaInterface "service\analytics\StatsCalculationService.java" "service.analytics" "StatsCalculationService" "Stats calculation service interface"
Create-JavaFile "service\analytics\StatsCalculationServiceImpl.java" "service.analytics" "StatsCalculationServiceImpl" "Stats calculation service implementation"
Create-JavaInterface "service\analytics\InsightsService.java" "service.analytics" "InsightsService" "Insights service interface"
Create-JavaFile "service\analytics\InsightsServiceImpl.java" "service.analytics" "InsightsServiceImpl" "Insights service implementation"

# Notification Services
Create-JavaInterface "service\notification\NotificationService.java" "service.notification" "NotificationService" "Notification service interface - FR3.3"
Create-JavaFile "service\notification\NotificationServiceImpl.java" "service.notification" "NotificationServiceImpl" "Notification service implementation"
Create-JavaInterface "service\notification\EmailService.java" "service.notification" "EmailService" "Email service interface"
Create-JavaFile "service\notification\EmailServiceImpl.java" "service.notification" "EmailServiceImpl" "Email service implementation"
Create-JavaInterface "service\notification\PushNotificationService.java" "service.notification" "PushNotificationService" "Push notification service interface"
Create-JavaFile "service\notification\PushNotificationServiceImpl.java" "service.notification" "PushNotificationServiceImpl" "Push notification service implementation"

# Integration Services
Create-JavaInterface "service\integration\KindleIntegrationService.java" "service.integration" "KindleIntegrationService" "Kindle integration service interface - FR9.1"
Create-JavaFile "service\integration\KindleIntegrationServiceImpl.java" "service.integration" "KindleIntegrationServiceImpl" "Kindle integration service implementation"
Create-JavaInterface "service\integration\BookstoreService.java" "service.integration" "BookstoreService" "Bookstore service interface - FR9.2"
Create-JavaFile "service\integration\BookstoreServiceImpl.java" "service.integration" "BookstoreServiceImpl" "Bookstore service implementation"
Create-JavaInterface "service\integration\ExportService.java" "service.integration" "ExportService" "Export service interface - FR9.4"
Create-JavaFile "service\integration\ExportServiceImpl.java" "service.integration" "ExportServiceImpl" "Export service implementation"

# AI Services
Create-JavaInterface "service\ai\AISummaryService.java" "service.ai" "AISummaryService" "AI summary service interface - FR11.1"
Create-JavaFile "service\ai\AISummaryServiceImpl.java" "service.ai" "AISummaryServiceImpl" "AI summary service implementation"
Create-JavaInterface "service\ai\AIQuestionService.java" "service.ai" "AIQuestionService" "AI question service interface - FR11.2"
Create-JavaFile "service\ai\AIQuestionServiceImpl.java" "service.ai" "AIQuestionServiceImpl" "AI question service implementation"
Create-JavaInterface "service\ai\AITaggingService.java" "service.ai" "AITaggingService" "AI tagging service interface - FR11.3"
Create-JavaFile "service\ai\AITaggingServiceImpl.java" "service.ai" "AITaggingServiceImpl" "AI tagging service implementation"

# Storage Services
Create-JavaInterface "service\storage\FileStorageService.java" "service.storage" "FileStorageService" "File storage service interface (S3/local)"
Create-JavaFile "service\storage\FileStorageServiceImpl.java" "service.storage" "FileStorageServiceImpl" "File storage service implementation"
Create-JavaInterface "service\storage\ImageService.java" "service.storage" "ImageService" "Image processing service interface"
Create-JavaFile "service\storage\ImageServiceImpl.java" "service.storage" "ImageServiceImpl" "Image processing service implementation"

Write-Host "`n=== Services created successfully! ===" -ForegroundColor Green
