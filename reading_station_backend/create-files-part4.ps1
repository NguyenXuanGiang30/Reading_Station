# Script Part 4: Events, Listeners, Schedulers, and other infrastructure files
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

Write-Host "=== Creating Events ===" -ForegroundColor Green

# User Events
Create-JavaFile "event\user\UserRegisteredEvent.java" "event.user" "UserRegisteredEvent" "User registered event"
Create-JavaFile "event\user\UserProfileUpdatedEvent.java" "event.user" "UserProfileUpdatedEvent" "User profile updated event"

# Library Events
Create-JavaFile "event\library\BookAddedEvent.java" "event.library" "BookAddedEvent" "Book added event"
Create-JavaFile "event\library\BookFinishedEvent.java" "event.library" "BookFinishedEvent" "Book finished event"
Create-JavaFile "event\library\ReadingProgressEvent.java" "event.library" "ReadingProgressEvent" "Reading progress event"
Create-JavaFile "event\library\BookRemovedEvent.java" "event.library" "BookRemovedEvent" "Book removed event"

# Note Events
Create-JavaFile "event\note\NoteCreatedEvent.java" "event.note" "NoteCreatedEvent" "Note created event"
Create-JavaFile "event\note\NoteUpdatedEvent.java" "event.note" "NoteUpdatedEvent" "Note updated event"
Create-JavaFile "event\note\AudioNoteCreatedEvent.java" "event.note" "AudioNoteCreatedEvent" "Audio note created event"

# Review Events
Create-JavaFile "event\review\FlashcardReviewedEvent.java" "event.review" "FlashcardReviewedEvent" "Flashcard reviewed event"
Create-JavaFile "event\review\ReviewCompletedEvent.java" "event.review" "ReviewCompletedEvent" "Review completed event"

# Gamification Events
Create-JavaFile "event\gamification\AchievementUnlockedEvent.java" "event.gamification" "AchievementUnlockedEvent" "Achievement unlocked event"
Create-JavaFile "event\gamification\StreakUpdatedEvent.java" "event.gamification" "StreakUpdatedEvent" "Streak updated event"
Create-JavaFile "event\gamification\GoalCompletedEvent.java" "event.gamification" "GoalCompletedEvent" "Goal completed event"

Write-Host "=== Creating Listeners ===" -ForegroundColor Green

# Listeners
Create-JavaFile "listener\AchievementListener.java" "listener" "AchievementListener" "Achievement listener - Listen for achievement triggers"
Create-JavaFile "listener\ActivityListener.java" "listener" "ActivityListener" "Activity listener - Create feed activities"
Create-JavaFile "listener\NotificationListener.java" "listener" "NotificationListener" "Notification listener - Send notifications"
Create-JavaFile "listener\AnalyticsListener.java" "listener" "AnalyticsListener" "Analytics listener - Track user actions"

Write-Host "=== Creating Schedulers ===" -ForegroundColor Green

# Schedulers
Create-JavaFile "scheduler\DailyReviewReminderJob.java" "scheduler" "DailyReviewReminderJob" "Daily review reminder job - FR3.3"
Create-JavaFile "scheduler\StreakResetJob.java" "scheduler" "StreakResetJob" "Streak reset job - FR5"
Create-JavaFile "scheduler\AnalyticsAggregationJob.java" "scheduler" "AnalyticsAggregationJob" "Analytics aggregation job - FR6"
Create-JavaFile "scheduler\GoalCheckJob.java" "scheduler" "GoalCheckJob" "Goal check job - FR5"
Create-JavaFile "scheduler\LeaderboardUpdateJob.java" "scheduler" "LeaderboardUpdateJob" "Leaderboard update job"

Write-Host "`n=== Events, Listeners, and Schedulers created successfully! ===" -ForegroundColor Green
