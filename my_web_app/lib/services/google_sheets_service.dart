// lib/services/google_sheets_service.dart
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart'; // Import dotenv
import '../models/trainee.dart'; // Import the Trainee model

class GoogleSheetsService {
  final String _spreadsheetId = dotenv.env['GOOGLE_SHEET_ID'] ??
      'default_spreadsheet_id'; // Use environment variable
  final String _apiKey = dotenv.env['GOOGLE_SHEETS_API_KEY'] ??
      'default_api_key'; // Use environment variable

  Future<List<Trainee>> loadTraineesFromSheet() async {
    final url =
        'https://sheets.googleapis.com/v4/spreadsheets/$_spreadsheetId/values/Sheet1?key=$_apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<Trainee> trainees = [];
      for (var row in data['values'].skip(1)) {
        // Skip header
        trainees.add(Trainee(
          id: row[0].toString(),
          name: row[1].toString(),
          classId: row[2].toString(),
          email: row[3].toString(),
          trainerEmail: row[4].toString(),
        ));
      }
      return trainees;
    } else {
      throw Exception('Failed to load data from Google Sheets');
    }
  }

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
