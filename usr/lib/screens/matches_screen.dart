import 'package:flutter/material.dart';
import '../models/user.dart';
import '../screens/profile_screen.dart';
import '../screens/chat_screen.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  // In a real app, this would come from a database
  List<Match> _matches = [
    Match(
      id: '1',
      user: UserProfile.mockUsers[0],
      matchedAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    Match(
      id: '2',
      user: UserProfile.mockUsers[1],
      matchedAt: DateTime.now().subtract(const Duration(hours: 12)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Matches'),
        backgroundColor: Colors.pink,
      ),
      body: _matches.isEmpty
          ? const Center(
              child: Text(
                'No matches yet. Keep swiping!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: _matches.length,
              itemBuilder: (context, index) {
                final match = _matches[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(match.user.imageUrl),
                      radius: 30,
                    ),
                    title: Text(
                      '${match.user.name}, ${match.user.age}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(match.user.bio),
                    trailing: Text(
                      _formatDate(match.matchedAt),
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(user: match.user),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else {
      return '${difference.inMinutes}m ago';
    }
  }
}