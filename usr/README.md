# DateMate - Dating App

A modern dating app built with Flutter that allows users to discover potential matches through an intuitive swiping interface.

## Features

- **Swipe to Match**: Browse through profiles and swipe right to like or left to pass
- **Profile Discovery**: View detailed profiles with photos, bios, and interests
- **Matches**: See all your mutual matches in a dedicated screen
- **Messaging**: Chat with your matches in real-time
- **User Profiles**: Manage your own profile with interests and bio

## Getting Started

This project is a starting point for a Flutter dating application.

### Prerequisites

- Flutter SDK (^3.7.2)
- Dart SDK

### Installation

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the app

## Project Structure

```
lib/
├── main.dart          # Main app entry point with navigation
├── models/
│   └── user.dart      # Data models for UserProfile, Match, and Message
├── screens/
│   ├── home_screen.dart    # Swipe/discover screen
│   ├── matches_screen.dart # Matches list screen
│   ├── profile_screen.dart # User profile details
│   └── chat_screen.dart    # Chat interface
└── widgets/
    └── swipe_card.dart # Custom swipeable card widget
```

## Architecture

The app follows a clean architecture with:
- **Models**: Data structures for users, matches, and messages
- **Screens**: Individual pages for different app sections
- **Widgets**: Reusable UI components like the swipe card

## Future Enhancements

- User authentication and registration
- Real-time messaging with backend integration
- Advanced filtering and search options
- Push notifications for new matches
- Photo upload and gallery
- Location-based matching

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.