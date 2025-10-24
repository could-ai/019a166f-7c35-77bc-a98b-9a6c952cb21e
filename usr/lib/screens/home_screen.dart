import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/swipe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserProfile> _potentialMatches = UserProfile.mockUsers;
  List<Match> _matches = [];

  void _onLike(UserProfile user) {
    setState(() {
      _matches.add(Match(
        id: DateTime.now().toString(),
        user: user,
        matchedAt: DateTime.now(),
      ));
      _potentialMatches.remove(user);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('You liked ${user.name}!')),
    );
  }

  void _onPass(UserProfile user) {
    setState(() {
      _potentialMatches.remove(user);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DateMate'),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              // TODO: Implement filters
            },
          ),
        ],
      ),
      body: _potentialMatches.isEmpty
          ? const Center(
              child: Text(
                'No more profiles to show!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : Stack(
              children: [
                ..._potentialMatches.map((user) => Positioned.fill(
                      child: SwipeCard(
                        user: user,
                        onLike: () => _onLike(user),
                        onPass: () => _onPass(user),
                      ),
                    )),
              ],
            ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: 'pass',
            backgroundColor: Colors.red,
            onPressed: _potentialMatches.isEmpty
                ? null
                : () => _onPass(_potentialMatches.last),
            child: const Icon(Icons.close, color: Colors.white),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            heroTag: 'like',
            backgroundColor: Colors.green,
            onPressed: _potentialMatches.isEmpty
                ? null
                : () => _onLike(_potentialMatches.last),
            child: const Icon(Icons.favorite, color: Colors.white),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}