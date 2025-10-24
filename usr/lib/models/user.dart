class UserProfile {
  final String id;
  final String name;
  final int age;
  final String bio;
  final String imageUrl;
  final List<String> interests;

  UserProfile({
    required this.id,
    required this.name,
    required this.age,
    required this.bio,
    required this.imageUrl,
    required this.interests,
  });

  // Mock data for demo
  static List<UserProfile> mockUsers = [
    UserProfile(
      id: '1',
      name: 'Alice',
      age: 25,
      bio: 'Love hiking and photography!',
      imageUrl: 'https://via.placeholder.com/300x400?text=Alice',
      interests: ['Hiking', 'Photography', 'Travel'],
    ),
    UserProfile(
      id: '2',
      name: 'Bob',
      age: 28,
      bio: 'Food enthusiast and chef.',
      imageUrl: 'https://via.placeholder.com/300x400?text=Bob',
      interests: ['Cooking', 'Food', 'Music'],
    ),
    UserProfile(
      id: '3',
      name: 'Charlie',
      age: 26,
      bio: 'Tech geek and gamer.',
      imageUrl: 'https://via.placeholder.com/300x400?text=Charlie',
      interests: ['Technology', 'Gaming', 'Reading'],
    ),
    UserProfile(
      id: '4',
      name: 'Diana',
      age: 24,
      bio: 'Artist and yoga lover.',
      imageUrl: 'https://via.placeholder.com/300x400?text=Diana',
      interests: ['Art', 'Yoga', 'Meditation'],
    ),
  ];
}

class Match {
  final String id;
  final UserProfile user;
  final DateTime matchedAt;

  Match({
    required this.id,
    required this.user,
    required this.matchedAt,
  });
}

class Message {
  final String id;
  final String text;
  final bool isMe;
  final DateTime timestamp;

  Message({
    required this.id,
    required this.text,
    required this.isMe,
    required this.timestamp,
  });
}