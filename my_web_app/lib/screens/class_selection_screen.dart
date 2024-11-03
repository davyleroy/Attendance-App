// lib/screens/class_selection_screen.dart
import 'package:flutter/material.dart';

class ClassSelectionScreen extends StatelessWidget {
  const ClassSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy class list for demonstration
    final classes = ['Class A', 'Class B', 'Class C', 'Class D', 'Class E'];

    return Scaffold(
      appBar: AppBar(title: const Text('Select Class')),
      body: ListView.builder(
        itemCount: classes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(classes[index]),
            onTap: () {
              // Handle class selection
              // Navigate to the next screen or perform an action
            },
          );
        },
      ),
    );
  }
}
