// lib/utils/constants.dart

// API URLs
const String apiBaseUrl =
    'https://your-api-url.com'; // Replace with your actual API base URL
const String googleSheetsApiUrl =
    'https://sheets.googleapis.com/v4/spreadsheets'; // Google Sheets API URL

// Time Constants
const int clockInLimitHour = 9; // Hour limit for clock-in
const int clockInLimitMinute = 1; // Minute limit for clock-in

// Notification Constants
const String lateArrivalSubject = 'Late Arrival Notification';
const String lateArrivalMessage =
    'You have clocked in late. Please be on time next time.';

// Other Constants
const String appName = 'Time Tracking App';
const String defaultClassName =
    'Unassigned'; // Default class name for unassigned trainees