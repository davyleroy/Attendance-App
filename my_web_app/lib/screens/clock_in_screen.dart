// lib/screens/clock_in_screen.dart
import 'package:flutter/material.dart';

class ClockInScreen extends StatelessWidget {
  const ClockInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clock In')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Clock In for Today'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle clock-in logic
              },
              child: const Text('Clock In'),
            ),
          ],
        ),
      ),
    );
  }
}
