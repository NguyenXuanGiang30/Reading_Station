# Script Part 3: DTOs, Controllers, Mappers
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

Write-Host "=== Creating DTOs ===" -ForegroundColor Green

# Auth DTOs
Create-JavaFile "dto\auth\LoginRequest.java" "dto.auth" "LoginRequest" "Login request DTO"
Create-JavaFile "dto\auth\RegisterRequest.java" "dto.auth" "RegisterRequest" "Register request DTO"
Create-JavaFile "dto\auth\AuthResponse.java" "dto.auth" "AuthResponse" "Auth response DTO"
Create-JavaFile "dto\auth\TokenRefreshRequest.java" "dto.auth" "TokenRefreshRequest" "Token refresh request DTO"
Create-JavaFile "dto\auth\TokenRefreshResponse.java" "dto.auth" "TokenRefreshResponse" "Token refresh response DTO"
Create-JavaFile "dto\auth\PasswordResetRequest.java" "dto.auth" "PasswordResetRequest" "Password reset request DTO"

# Library DTOs
Create-JavaFile "dto\library\BookDTO.java" "dto.library" "BookDTO" "Book DTO"
Create-JavaFile "dto\library\CreateBookRequest.java" "dto.library" "CreateBookRequest" "Create book request DTO"
Create-JavaFile "dto\library\UpdateBookRequest.java" "dto.library" "UpdateBookRequest" "Update book request DTO"
Create-JavaFile "dto\library\UpdateProgressRequest.java" "dto.library" "UpdateProgressRequest" "Update progress request DTO"
Create-JavaFile "dto\library\BookDetailResponse.java" "dto.library" "BookDetailResponse" "Book detail response DTO"
Create-JavaFile "dto\library\CustomShelfDTO.java" "dto.library" "CustomShelfDTO" "Custom shelf DTO"
Create-JavaFile "dto\library\CreateShelfRequest.java" "dto.library" "CreateShelfRequest" "Create shelf request DTO"
Create-JavaFile "dto\library\ReadingSessionDTO.java" "dto.library" "ReadingSessionDTO" "Reading session DTO"

# Note DTOs
Create-JavaFile "dto\note\NoteDTO.java" "dto.note" "NoteDTO" "Note DTO"
Create-JavaFile "dto\note\CreateNoteRequest.java" "dto.note" "CreateNoteRequest" "Create note request DTO"
Create-JavaFile "dto\note\UpdateNoteRequest.java" "dto.note" "UpdateNoteRequest" "Update note request DTO"
Create-JavaFile "dto\note\CreateVoiceNoteRequest.java" "dto.note" "CreateVoiceNoteRequest" "Create voice note request DTO"
Create-JavaFile "dto\note\KeyTakeawayDTO.java" "dto.note" "KeyTakeawayDTO" "Key takeaway DTO"
Create-JavaFile "dto\note\NoteTagDTO.java" "dto.note" "NoteTagDTO" "Note tag DTO"

# Review DTOs
Create-JavaFile "dto\review\FlashcardDTO.java" "dto.review" "FlashcardDTO" "Flashcard DTO"
Create-JavaFile "dto\review\CreateFlashcardRequest.java" "dto.review" "CreateFlashcardRequest" "Create flashcard request DTO"
Create-JavaFile "dto\review\UpdateFlashcardRequest.java" "dto.review" "UpdateFlashcardRequest" "Update flashcard request DTO"
Create-JavaFile "dto\review\ReviewResultRequest.java" "dto.review" "ReviewResultRequest" "Review result request DTO"
Create-JavaFile "dto\review\DueFlashcardsResponse.java" "dto.review" "DueFlashcardsResponse" "Due flashcards response DTO"
Create-JavaFile "dto\review\ReviewStatsDTO.java" "dto.review" "ReviewStatsDTO" "Review stats DTO"

# Social DTOs
Create-JavaFile "dto\social\FriendDTO.java" "dto.social" "FriendDTO" "Friend DTO"
Create-JavaFile "dto\social\FriendRequestDTO.java" "dto.social" "FriendRequestDTO" "Friend request DTO"
Create-JavaFile "dto\social\ActivityDTO.java" "dto.social" "ActivityDTO" "Activity DTO"
Create-JavaFile "dto\social\FeedResponse.java" "dto.social" "FeedResponse" "Feed response DTO"
Create-JavaFile "dto\social\BookReviewDTO.java" "dto.social" "BookReviewDTO" "Book review DTO"
Create-JavaFile "dto\social\CreateReviewRequest.java" "dto.social" "CreateReviewRequest" "Create review request DTO"
Create-JavaFile "dto\social\ReadingListDTO.java" "dto.social" "ReadingListDTO" "Reading list DTO"
Create-JavaFile "dto\social\CreateListRequest.java" "dto.social" "CreateListRequest" "Create list request DTO"
Create-JavaFile "dto\social\CommentDTO.java" "dto.social" "CommentDTO" "Comment DTO"

# Gamification DTOs
Create-JavaFile "dto\gamification\AchievementDTO.java" "dto.gamification" "AchievementDTO" "Achievement DTO"
Create-JavaFile "dto\gamification\UserAchievementDTO.java" "dto.gamification" "UserAchievementDTO" "User achievement DTO"
Create-JavaFile "dto\gamification\StreakDTO.java" "dto.gamification" "StreakDTO" "Streak DTO"
Create-JavaFile "dto\gamification\ReadingGoalDTO.java" "dto.gamification" "ReadingGoalDTO" "Reading goal DTO"
Create-JavaFile "dto\gamification\CreateGoalRequest.java" "dto.gamification" "CreateGoalRequest" "Create goal request DTO"
Create-JavaFile "dto\gamification\UpdateGoalRequest.java" "dto.gamification" "UpdateGoalRequest" "Update goal request DTO"
Create-JavaFile "dto\gamification\LeaderboardResponse.java" "dto.gamification" "LeaderboardResponse" "Leaderboard response DTO"
Create-JavaFile "dto\gamification\BadgeDTO.java" "dto.gamification" "BadgeDTO" "Badge DTO"

# BookClub DTOs
Create-JavaFile "dto\bookclub\BookClubDTO.java" "dto.bookclub" "BookClubDTO" "Book club DTO"
Create-JavaFile "dto\bookclub\CreateClubRequest.java" "dto.bookclub" "CreateClubRequest" "Create club request DTO"
Create-JavaFile "dto\bookclub\UpdateClubRequest.java" "dto.bookclub" "UpdateClubRequest" "Update club request DTO"
Create-JavaFile "dto\bookclub\ClubMemberDTO.java" "dto.bookclub" "ClubMemberDTO" "Club member DTO"
Create-JavaFile "dto\bookclub\DiscussionDTO.java" "dto.bookclub" "DiscussionDTO" "Discussion DTO"
Create-JavaFile "dto\bookclub\CreateDiscussionRequest.java" "dto.bookclub" "CreateDiscussionRequest" "Create discussion request DTO"
Create-JavaFile "dto\bookclub\ChallengeDTO.java" "dto.bookclub" "ChallengeDTO" "Challenge DTO"
Create-JavaFile "dto\bookclub\CreateChallengeRequest.java" "dto.bookclub" "CreateChallengeRequest" "Create challenge request DTO"

# Analytics DTOs
Create-JavaFile "dto\analytics\ReadingStatsResponse.java" "dto.analytics" "ReadingStatsResponse" "Reading stats response DTO"
Create-JavaFile "dto\analytics\HeatmapResponse.java" "dto.analytics" "HeatmapResponse" "Heatmap response DTO"
Create-JavaFile "dto\analytics\InsightsResponse.java" "dto.analytics" "InsightsResponse" "Insights response DTO"
Create-JavaFile "dto\analytics\DashboardResponse.java" "dto.analytics" "DashboardResponse" "Dashboard response DTO"
Create-JavaFile "dto\analytics\WeeklyStatsDTO.java" "dto.analytics" "WeeklyStatsDTO" "Weekly stats DTO"
Create-JavaFile "dto\analytics\MonthlyStatsDTO.java" "dto.analytics" "MonthlyStatsDTO" "Monthly stats DTO"

Write-Host "=== Creating Controllers ===" -ForegroundColor Green

# Auth Controller
Create-JavaFile "controller\AuthController.java" "controller" "AuthController" "Auth controller"

# Library Controllers
Create-JavaFile "controller\library\BookController.java" "controller.library" "BookController" "Book controller"
Create-JavaFile "controller\library\LibraryController.java" "controller.library" "LibraryController" "Library controller"
Create-JavaFile "controller\library\ShelfController.java" "controller.library" "ShelfController" "Shelf controller"
Create-JavaFile "controller\library\ReadingSessionController.java" "controller.library" "ReadingSessionController" "Reading session controller"

# Note Controllers
Create-JavaFile "controller\note\NoteController.java" "controller.note" "NoteController" "Note controller"
Create-JavaFile "controller\note\AudioNoteController.java" "controller.note" "AudioNoteController" "Audio note controller"
Create-JavaFile "controller\note\KeyTakeawayController.java" "controller.note" "KeyTakeawayController" "Key takeaway controller"

# Review Controllers
Create-JavaFile "controller\review\FlashcardController.java" "controller.review" "FlashcardController" "Flashcard controller"
Create-JavaFile "controller\review\ReviewController.java" "controller.review" "ReviewController" "Review controller"
Create-JavaFile "controller\review\ReviewScheduleController.java" "controller.review" "ReviewScheduleController" "Review schedule controller"

# Social Controllers
Create-JavaFile "controller\social\FriendController.java" "controller.social" "FriendController" "Friend controller"
Create-JavaFile "controller\social\FeedController.java" "controller.social" "FeedController" "Feed controller"
Create-JavaFile "controller\social\ReviewController.java" "controller.social" "ReviewController" "Review controller"
Create-JavaFile "controller\social\ReadingListController.java" "controller.social" "ReadingListController" "Reading list controller"
Create-JavaFile "controller\social\CommentController.java" "controller.social" "CommentController" "Comment controller"

# Gamification Controllers
Create-JavaFile "controller\gamification\AchievementController.java" "controller.gamification" "AchievementController" "Achievement controller"
Create-JavaFile "controller\gamification\StreakController.java" "controller.gamification" "StreakController" "Streak controller"
Create-JavaFile "controller\gamification\GoalController.java" "controller.gamification" "GoalController" "Goal controller"
Create-JavaFile "controller\gamification\LeaderboardController.java" "controller.gamification" "LeaderboardController" "Leaderboard controller"

# BookClub Controllers
Create-JavaFile "controller\bookclub\BookClubController.java" "controller.bookclub" "BookClubController" "Book club controller"
Create-JavaFile "controller\bookclub\DiscussionController.java" "controller.bookclub" "DiscussionController" "Discussion controller"
Create-JavaFile "controller\bookclub\ChallengeController.java" "controller.bookclub" "ChallengeController" "Challenge controller"

# Analytics Controllers
Create-JavaFile "controller\analytics\AnalyticsController.java" "controller.analytics" "AnalyticsController" "Analytics controller"
Create-JavaFile "controller\analytics\StatsController.java" "controller.analytics" "StatsController" "Stats controller"
Create-JavaFile "controller\analytics\DashboardController.java" "controller.analytics" "DashboardController" "Dashboard controller"

# Integration Controllers
Create-JavaFile "controller\integration\KindleController.java" "controller.integration" "KindleController" "Kindle controller"
Create-JavaFile "controller\integration\ExportController.java" "controller.integration" "ExportController" "Export controller"

# AI Controllers
Create-JavaFile "controller\ai\AIAssistantController.java" "controller.ai" "AIAssistantController" "AI assistant controller"

Write-Host "=== Creating Mappers ===" -ForegroundColor Green

# Mappers
Create-JavaFile "mapper\UserMapper.java" "mapper" "UserMapper" "User mapper"
Create-JavaFile "mapper\BookMapper.java" "mapper" "BookMapper" "Book mapper"
Create-JavaFile "mapper\NoteMapper.java" "mapper" "NoteMapper" "Note mapper"
Create-JavaFile "mapper\FlashcardMapper.java" "mapper" "FlashcardMapper" "Flashcard mapper"
Create-JavaFile "mapper\ActivityMapper.java" "mapper" "ActivityMapper" "Activity mapper"
Create-JavaFile "mapper\AchievementMapper.java" "mapper" "AchievementMapper" "Achievement mapper"
Create-JavaFile "mapper\BookClubMapper.java" "mapper" "BookClubMapper" "Book club mapper"
Create-JavaFile "mapper\AnalyticsMapper.java" "mapper" "AnalyticsMapper" "Analytics mapper"

Write-Host "`n=== DTOs, Controllers, and Mappers created successfully! ===" -ForegroundColor Green
