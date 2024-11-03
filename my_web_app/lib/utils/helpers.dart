// lib/utils/helpers.dart

import 'package:crypto/crypto.dart';
import 'dart:convert';

// Function to hash a password
String hashPassword(String password) {
  final bytes = utf8.encode(password); // Convert password to bytes
  final digest = sha256.convert(bytes); // Hash the password using SHA-256
  return digest.toString(); // Return the hashed password as a string
}

// Function to format DateTime to a readable string
String formatDateTime(DateTime dateTime) {
  return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute}';
}
