// lib/home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.lightGreen, // Green top navbar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Choose your role'),
            SizedBox(height: 20), // Space for better layout
            // Admin Button
            ElevatedButton(
              onPressed: () {
                // Add your onPressed code here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen, // Background color
                foregroundColor: Colors.white, // Text color
              ),
              child: Text('Admin'),
            ),
            SizedBox(height: 20), // Space between buttons
            // Candidate Button
            ElevatedButton(
              onPressed: () {
                // Add your onPressed code here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen, // Background color
                foregroundColor: Colors.white, // Text color
              ),
              child: Text('Candidate'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey, // Grey bottom navbar
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'Harambee 2024 ©', // Copyright symbol
              style: TextStyle(color: Colors.black), // Text color
            ),
          ),
        ),
      ),
    );
  }
}
