// lib/models/user.dart
class User {
  final String username;
  final String passwordHash;
  final String role;

  User({
    required this.username,
    required this.passwordHash,
    required this.role,
  });

  bool isAdmin() {
    return role == 'admin';
  }
}
