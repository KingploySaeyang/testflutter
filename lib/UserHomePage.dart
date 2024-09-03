// UserHomePage.dart
import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Home Page'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Center(child: Text('Welcome, User!')),
    );
  }
}
