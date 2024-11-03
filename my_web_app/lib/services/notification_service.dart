// lib/services/notification_service.dart
import 'package:http/http.dart' as http;
import 'dart:convert'; // Add this import for JSON encoding

class NotificationService {
  final String _apiUrl =
      'https://your-notification-api.com/send'; // Replace with your actual API URL

  Future<void> sendEmail(
      String recipient, String subject, String message) async {
    final response = await http.post(
      Uri.parse(_apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'recipient': recipient,
        'subject': subject,
        'message': message,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to send email: ${response.body}');
    }
  }
}
