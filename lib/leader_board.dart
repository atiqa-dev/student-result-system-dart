import 'package:flutter/material.dart';

class LeaderBoardWidget extends StatelessWidget {
  const LeaderBoardWidget({super.key});

  static String routePath = '/leaderBoard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Leader Board")),
      body: const Center(
        child: Text("Leaderboard will be displayed here"),
      ),
    );
  }
}
