// lib/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:my_web_app/Pages/home_page.dart'; // Update with your actual home page import

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0; // Initial opacity

  @override
  void initState() {
    super.initState();
    _fadeIn(); // Start fade-in animation
  }

  void _fadeIn() {
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0; // Fade in
      });
    });

    // Navigate to HomePage after a delay
    Future.delayed(Duration(seconds: 3), () {
      _fadeOut(); // Start fade-out animation
    });
  }

  void _fadeOut() {
    setState(() {
      _opacity = 0.0; // Fade out
    });

    // Navigate to HomePage after fade-out
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 500), // Duration for fade effect
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Wrap the image in a Container to control size
              Container(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset(
                  'assets/images/Harambee Logo2.png', // Ensure this is the correct image path
                  fit: BoxFit.contain, // Maintain aspect ratio
                ),
              ),
              const Text(
                'Welcome to Harambee',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.lightGreen,
                  fontFamily: 'Lato', // Set the font family to Lato
                  fontStyle: FontStyle.italic, // Set the font style to italic
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
