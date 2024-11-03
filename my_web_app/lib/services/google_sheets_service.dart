// lib/services/google_sheets_service.dart
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart'; // Import dotenv

class GoogleSheetsService {
  final String _spreadsheetId = dotenv.env['GOOGLE_SHEET_ID'] ??
      'default_spreadsheet_id'; // Use environment variable
  final String _apiKey = dotenv.env['GOOGLE_SHEETS_API_KEY'] ??
      'default_api_key'; // Use environment variable

  Future<void> syncData(List<Map<String, dynamic>> data) async {
    final url =
        'https://sheets.googleapis.com/v4/spreadsheets/$_spreadsheetId/values/Sheet1!A1:append?valueInputOption=USER_ENTERED&key=$_apiKey';
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'values': data}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to sync data: ${response.body}');
    }
  }
}
