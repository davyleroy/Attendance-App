//lib/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:my_web_app/screens/login_screen.dart';
//import 'package:my_web_app/screens/home_page.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key}); // Pass key to super constructor
  @override
  SplashScreenState createState() =>
      SplashScreenState(); // Updated to public state class
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        // Check if the widget is still mounted
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: isSmallScreen ? 80 : 120,
              height: isSmallScreen ? 80 : 120,
              child: Image.asset(
                'assets/images/Harambee Logo2.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Welcome to Harambee',
              style: TextStyle(
                fontSize: isSmallScreen ? 20 : 28,
                color: Colors.lightGreen,
                fontFamily: 'Lato',
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
