import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final TextEditingController _passwordController = TextEditingController();
  Color _buttonColor = Colors.grey; // Default button color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen, // Light green background
      body: Row(
        // Use Row to create side padding
        children: [
          Expanded(
            child: Container(), // Left padding
          ),
          Expanded(
            flex: 2, // Center content takes more space
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato', // Set the font family to Lato
                    fontStyle: FontStyle.italic, // Set the font style to italic
                  ),
                ),
                SizedBox(height: 20), // Space between text and input
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width *
                        0.8, // Set width to 80% of the screen width
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password', // Changed from 'Enter Password'
                        filled: true,
                        fillColor: Colors
                            .white, // White background for the input field
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Space between input and button
                MouseRegion(
                  onEnter: (_) => _onHover(true),
                  onExit: (_) => _onHover(false),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate password input
                      String password = _passwordController.text;
                      // Add your validation logic here
                      if (password == 'your_password') {
                        // Replace with actual validation
                        // Proceed to the next step
                        print('Password is valid');
                      } else {
                        // Show error message
                        print('Invalid password');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _buttonColor, // Use the button color state
                      foregroundColor: Colors.white, // Text color
                    ),
                    child: Text('Validate'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lightGreen
                  .withOpacity(0.0), // Debugging background color
              child: Stack(
                // Use Stack to position the logo
                children: [
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Image.asset(
                      'assets/images/Harambee white-logo.png', // Ensure this is the correct image path
                      width: 150, // Set the desired width
                      height: 150, // Set the desired height
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _buttonColor = isHovered
          ? (Colors.green[800] ?? Colors.green)
          : Colors.grey; // Change color on hover
    });
  }
}
