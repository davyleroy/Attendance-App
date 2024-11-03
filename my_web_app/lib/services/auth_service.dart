// lib/services/auth_service.dart
import 'package:crypto/crypto.dart';
import 'dart:convert';
import '../models/user.dart';

class AuthService {
  final List<User> _users = [
    User(
      username: 'admin',
      passwordHash: _hashPassword('admin123'),
      role: 'admin',
    ),
    User(
      username: 'trainee',
      passwordHash: _hashPassword('trainee123'),
      role: 'trainee',
    ),
  ];

  static String _hashPassword(String password) {
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<User?> login(String username, String password) async {
    final hashedPassword = _hashPassword(password);
    try {
      return _users.firstWhere(
        (user) =>
            user.username == username && user.passwordHash == hashedPassword,
      );
    } catch (e) {
      return null;
    }
  }
}
