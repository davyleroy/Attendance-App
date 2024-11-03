// lib/utils/validators.dart

// Function to validate email format
bool isValidEmail(String email) {
  final RegExp emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  return emailRegex.hasMatch(email);
}

// Function to validate password strength
bool isValidPassword(String password) {
  return password.length >=
      6; // Example: Password must be at least 6 characters long
}

// Function to validate if a string is not empty
bool isNotEmpty(String value) {
  return value.isNotEmpty;
}
