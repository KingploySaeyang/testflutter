// AdminHomePage.dart
import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Home Page'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Center(child: Text('Welcome, Admin!')),
    );
  }
}
