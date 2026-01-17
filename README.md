# ANCHOR - Wellness Companion

**Stay grounded while you roam.**

## Overview
ANCHOR is an intelligent wellness companion application designed to help travelers maintain their well-being. By leveraging real-time data and predictive modeling, ANCHOR provides personalized interventions to manage stress and improve the travel experience.

## Key Features
- **Stress Detection Engine:** Predicts and analyzes stress levels based on user activity and context.
- **Smart Interventions:** Recommends personalized wellness activities to mitigate stress.
- **Personalization Engine:** Learns from user preferences and feedback to tailor recommendations.
- **Trip Context Awareness:** Adapts to the user's travel schedule and location.
- **Calendar Integration:** Seamlessly syncs with device calendars for smart scheduling.

## Architecture
The application follows **Clean Architecture** principles to ensure scalability, testability, and separation of concerns:
- **Presentation Layer:** Flutter UI with Riverpod for state management.
- **Domain Layer:** Business logic, entities, and use cases.
- **Data Layer:** Repositories, data sources, and models.

## Technology Stack
- **Framework:** Flutter (Dart)
- **State Management:** Riverpod
- **Navigation:** GoRouter
- **Modeling:** Freezed & JSON Serializable
- **Local Storage:** Shared Preferences
- **Integration:** Device Calendar, Local Notifications

## Getting Started
1. Install dependencies:
   ```bash
   flutter pub get
   ```
2. Run code generation:
   ```bash
   dart run build_runner build -d
   ```
3. Run the app:
   ```bash
   flutter run
   ```
