# Script to create all placeholder Java files for Reading Station Backend
# Run this script from the reading_station_backend directory

$basePath = "reading-station-api\src\main\java\com\tramdoc\api"

# Function to create a Java file with placeholder content
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

# Function to create interface
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

Write-Host "=== Creating Common Utilities ===" -ForegroundColor Green

# Common - DTOs
Create-JavaFile "common\dto\PageResponse.java" "common.dto" "PageResponse" "Pagination wrapper"
Create-JavaFile "common\dto\ApiResponse.java" "common.dto" "ApiResponse" "Standard API response"

# Common - Constants
Create-JavaFile "common\constants\AppConstants.java" "common.constants" "AppConstants" "Application constants"
Create-JavaFile "common\constants\ErrorMessages.java" "common.constants" "ErrorMessages" "Error message constants"
Create-JavaFile "common\constants\CacheConstants.java" "common.constants" "CacheConstants" "Cache key constants"
Create-JavaFile "common\constants\FileConstants.java" "common.constants" "FileConstants" "File-related constants"

# Common - Utils
Create-JavaFile "common\utils\DateUtils.java" "common.utils" "DateUtils" "Date utility methods"
Create-JavaFile "common\utils\ValidationUtils.java" "common.utils" "ValidationUtils" "Validation utility methods"
Create-JavaFile "common\utils\SlugUtils.java" "common.utils" "SlugUtils" "Slug generation utilities"
Create-JavaFile "common\utils\StringUtils.java" "common.utils" "StringUtils" "String utility methods"
Create-JavaFile "common\utils\FileUtils.java" "common.utils" "FileUtils" "File utility methods"

Write-Host "=== Creating Domain Entities ===" -ForegroundColor Green

# User Domain
Create-JavaFile "domain\user\User.java" "domain.user" "User" "User entity"
Create-JavaFile "domain\user\Role.java" "domain.user" "Role" "Role entity"
Create-JavaFile "domain\user\UserSettings.java" "domain.user" "UserSettings" "User settings entity - FR12"

# Library Domain
Create-JavaFile "domain\library\Book.java" "domain.library" "Book" "Book entity"
Create-JavaFile "domain\library\UserBook.java" "domain.library" "UserBook" "User's book instance"
Create-JavaFile "domain\library\CustomShelf.java" "domain.library" "CustomShelf" "Custom shelf entity - FR12.2"
Create-JavaFile "domain\library\ReadingSession.java" "domain.library" "ReadingSession" "Reading session entity - FR6.2"
Create-JavaFile "domain\library\BookCategory.java" "domain.library" "BookCategory" "Book category entity"

# Note Domain
Create-JavaFile "domain\note\Note.java" "domain.note" "Note" "Note entity"
Create-JavaFile "domain\note\AudioNote.java" "domain.note" "AudioNote" "Audio note entity - FR7.1"
Create-JavaFile "domain\note\KeyTakeaway.java" "domain.note" "KeyTakeaway" "Key takeaway entity - FR2.3"
Create-JavaFile "domain\note\NoteTag.java" "domain.note" "NoteTag" "Note tag entity"

# Review Domain
Create-JavaFile "domain\review\Flashcard.java" "domain.review" "Flashcard" "Flashcard entity"
Create-JavaFile "domain\review\ReviewHistory.java" "domain.review" "ReviewHistory" "Review history entity"
Create-JavaFile "domain\review\ReviewSchedule.java" "domain.review" "ReviewSchedule" "Review schedule entity"

# Social Domain
Create-JavaFile "domain\social\Friendship.java" "domain.social" "Friendship" "Friendship entity"
Create-JavaFile "domain\social\Activity.java" "domain.social" "Activity" "Activity feed entity"
Create-JavaFile "domain\social\BookReview.java" "domain.social" "BookReview" "Book review entity - FR10.1"
Create-JavaFile "domain\social\ReadingList.java" "domain.social" "ReadingList" "Reading list entity - FR8.2"
Create-JavaFile "domain\social\Comment.java" "domain.social" "Comment" "Comment entity"
Create-JavaFile "domain\social\Like.java" "domain.social" "Like" "Like entity"

# Gamification Domain
Create-JavaFile "domain\gamification\Achievement.java" "domain.gamification" "Achievement" "Achievement entity"
Create-JavaFile "domain\gamification\UserAchievement.java" "domain.gamification" "UserAchievement" "User achievement entity"
Create-JavaFile "domain\gamification\ReadingStreak.java" "domain.gamification" "ReadingStreak" "Reading streak entity"
Create-JavaFile "domain\gamification\ReadingGoal.java" "domain.gamification" "ReadingGoal" "Reading goal entity"
Create-JavaFile "domain\gamification\LeaderboardEntry.java" "domain.gamification" "LeaderboardEntry" "Leaderboard entry"
Create-JavaFile "domain\gamification\Badge.java" "domain.gamification" "Badge" "Badge entity"

# BookClub Domain
Create-JavaFile "domain\bookclub\BookClub.java" "domain.bookclub" "BookClub" "Book club entity"
Create-JavaFile "domain\bookclub\ClubMember.java" "domain.bookclub" "ClubMember" "Club member entity"
Create-JavaFile "domain\bookclub\ClubDiscussion.java" "domain.bookclub" "ClubDiscussion" "Club discussion entity"
Create-JavaFile "domain\bookclub\ReadingChallenge.java" "domain.bookclub" "ReadingChallenge" "Reading challenge entity"
Create-JavaFile "domain\bookclub\ClubEvent.java" "domain.bookclub" "ClubEvent" "Club event entity"

# Analytics Domain
Create-JavaFile "domain\analytics\ReadingStats.java" "domain.analytics" "ReadingStats" "Reading stats entity"
Create-JavaFile "domain\analytics\UserAnalytics.java" "domain.analytics" "UserAnalytics" "User analytics entity"
Create-JavaFile "domain\analytics\DailyActivity.java" "domain.analytics" "DailyActivity" "Daily activity entity"

Write-Host "=== Creating Repositories ===" -ForegroundColor Green

# User Repositories
Create-JavaInterface "repository\user\UserRepository.java" "repository.user" "UserRepository" "User repository"
Create-JavaInterface "repository\user\RoleRepository.java" "repository.user" "RoleRepository" "Role repository"
Create-JavaInterface "repository\user\UserSettingsRepository.java" "repository.user" "UserSettingsRepository" "User settings repository"

# Library Repositories
Create-JavaInterface "repository\library\BookRepository.java" "repository.library" "BookRepository" "Book repository"
Create-JavaInterface "repository\library\UserBookRepository.java" "repository.library" "UserBookRepository" "User book repository"
Create-JavaInterface "repository\library\CustomShelfRepository.java" "repository.library" "CustomShelfRepository" "Custom shelf repository"
Create-JavaInterface "repository\library\ReadingSessionRepository.java" "repository.library" "ReadingSessionRepository" "Reading session repository"
Create-JavaInterface "repository\library\BookCategoryRepository.java" "repository.library" "BookCategoryRepository" "Book category repository"

# Note Repositories
Create-JavaInterface "repository\note\NoteRepository.java" "repository.note" "NoteRepository" "Note repository"
Create-JavaInterface "repository\note\AudioNoteRepository.java" "repository.note" "AudioNoteRepository" "Audio note repository"
Create-JavaInterface "repository\note\KeyTakeawayRepository.java" "repository.note" "KeyTakeawayRepository" "Key takeaway repository"
Create-JavaInterface "repository\note\NoteTagRepository.java" "repository.note" "NoteTagRepository" "Note tag repository"

# Review Repositories
Create-JavaInterface "repository\review\FlashcardRepository.java" "repository.review" "FlashcardRepository" "Flashcard repository"
Create-JavaInterface "repository\review\ReviewHistoryRepository.java" "repository.review" "ReviewHistoryRepository" "Review history repository"
Create-JavaInterface "repository\review\ReviewScheduleRepository.java" "repository.review" "ReviewScheduleRepository" "Review schedule repository"

# Social Repositories
Create-JavaInterface "repository\social\FriendshipRepository.java" "repository.social" "FriendshipRepository" "Friendship repository"
Create-JavaInterface "repository\social\ActivityRepository.java" "repository.social" "ActivityRepository" "Activity repository"
Create-JavaInterface "repository\social\BookReviewRepository.java" "repository.social" "BookReviewRepository" "Book review repository"
Create-JavaInterface "repository\social\ReadingListRepository.java" "repository.social" "ReadingListRepository" "Reading list repository"
Create-JavaInterface "repository\social\CommentRepository.java" "repository.social" "CommentRepository" "Comment repository"
Create-JavaInterface "repository\social\LikeRepository.java" "repository.social" "LikeRepository" "Like repository"

# Gamification Repositories
Create-JavaInterface "repository\gamification\AchievementRepository.java" "repository.gamification" "AchievementRepository" "Achievement repository"
Create-JavaInterface "repository\gamification\UserAchievementRepository.java" "repository.gamification" "UserAchievementRepository" "User achievement repository"
Create-JavaInterface "repository\gamification\ReadingStreakRepository.java" "repository.gamification" "ReadingStreakRepository" "Reading streak repository"
Create-JavaInterface "repository\gamification\ReadingGoalRepository.java" "repository.gamification" "ReadingGoalRepository" "Reading goal repository"
Create-JavaInterface "repository\gamification\LeaderboardRepository.java" "repository.gamification" "LeaderboardRepository" "Leaderboard repository"
Create-JavaInterface "repository\gamification\BadgeRepository.java" "repository.gamification" "BadgeRepository" "Badge repository"

# BookClub Repositories
Create-JavaInterface "repository\bookclub\BookClubRepository.java" "repository.bookclub" "BookClubRepository" "Book club repository"
Create-JavaInterface "repository\bookclub\ClubMemberRepository.java" "repository.bookclub" "ClubMemberRepository" "Club member repository"
Create-JavaInterface "repository\bookclub\ClubDiscussionRepository.java" "repository.bookclub" "ClubDiscussionRepository" "Club discussion repository"
Create-JavaInterface "repository\bookclub\ReadingChallengeRepository.java" "repository.bookclub" "ReadingChallengeRepository" "Reading challenge repository"
Create-JavaInterface "repository\bookclub\ClubEventRepository.java" "repository.bookclub" "ClubEventRepository" "Club event repository"

# Analytics Repositories
Create-JavaInterface "repository\analytics\ReadingStatsRepository.java" "repository.analytics" "ReadingStatsRepository" "Reading stats repository"
Create-JavaInterface "repository\analytics\UserAnalyticsRepository.java" "repository.analytics" "UserAnalyticsRepository" "User analytics repository"
Create-JavaInterface "repository\analytics\DailyActivityRepository.java" "repository.analytics" "DailyActivityRepository" "Daily activity repository"

Write-Host "`n=== All files created successfully! ===" -ForegroundColor Green
Write-Host "Total files created. Please run the script to see the complete structure." -ForegroundColor Yellow
