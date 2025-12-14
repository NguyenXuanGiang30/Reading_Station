# Reading Station Backend (Trạm Đọc)

## Overview
Backend REST API for Reading Station - A comprehensive reading management application.

## Tech Stack
- **Framework**: Spring Boot 3.2.0
- **Language**: Java 17
- **Database**: PostgreSQL
- **Cache**: Redis
- **Security**: JWT
- **Documentation**: Swagger/OpenAPI
- **Build Tool**: Maven

## Project Structure
This is a multi-module Maven project:
- `reading-station-common`: Shared utilities
- `reading-station-api`: Main REST API Gateway

## Getting Started

### Prerequisites
- Java 17 or higher
- Maven 3.8+
- PostgreSQL 14+
- Redis 6+

### Running the Application

1. **Clone the repository**
```bash
git clone <repository-url>
cd reading-station-backend
```

2. **Configure database**
Update `reading-station-api/src/main/resources/application-dev.yml` with your database credentials.

3. **Build the project**
```bash
mvn clean install
```

4. **Run the application**
```bash
cd reading-station-api
mvn spring-boot:run
```

The API will be available at `http://localhost:8080`

### API Documentation
Once running, visit: `http://localhost:8080/swagger-ui.html`

## Environment Variables
Create a `.env` file based on `.env.example`:
- `DATABASE_URL`: PostgreSQL connection URL
- `DATABASE_USERNAME`: Database username
- `DATABASE_PASSWORD`: Database password
- `JWT_SECRET`: Secret key for JWT token generation
- `REDIS_HOST`: Redis host
- `AWS_ACCESS_KEY`: AWS S3 access key
- `FIREBASE_CREDENTIALS_PATH`: Firebase credentials file path

## Features
- FR1: Library Management
- FR2: Note Taking (OCR, Voice Notes)
- FR3: Flashcard Review System (Spaced Repetition)
- FR4: Social Features
- FR5: Gamification
- FR6: Analytics
- FR7: Audio Features
- FR8: Book Clubs
- FR9: Integrations (Kindle, Bookstores)
- FR10: Community Features
- FR11: AI Assistant
- FR12: Personalization

## License
TODO: Add license information
