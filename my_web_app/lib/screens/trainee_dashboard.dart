// lib/screens/trainee_dashboard.dart
import 'package:flutter/material.dart';

class TraineeDashboard extends StatelessWidget {
  const TraineeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trainee Dashboard'),
      ),
      body: const Center(
        child: Text('Welcome, Trainee!'),
      ),
    );
  }
}
