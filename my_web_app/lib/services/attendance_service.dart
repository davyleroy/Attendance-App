// lib/services/attendance_service.dart
import 'package:my_web_app/models/trainee.dart'; // Update with your actual path
import 'package:my_web_app/services/notification_service.dart'; // Update with your actual path
import 'package:my_web_app/models/attendance.dart'; // Add this import for Attendance

class AttendanceService {
  final List<Attendance> _attendanceRecords = [];
  final NotificationService _notificationService = NotificationService();
  final int clockInLimitHour = 9; // Define the clock-in limit hour
  final int clockInLimitMinute = 0; // Define the clock-in limit minute
  final String lateArrivalSubject =
      'Late Arrival Notification'; // Define the subject for late arrival
  final String lateArrivalMessage =
      'Dear Candidate,\n\nYou have clocked in late. Please be mindful of the clock-in time.'; // Define the message for late arrival

  void clockIn(Trainee trainee) {
    final now = DateTime.now();
    final attendance = Attendance(
      traineeId: trainee.id,
      clockInTime: now,
    );
    _attendanceRecords.add(attendance);

    // Check if the clock-in time is late
    if (now.hour > clockInLimitHour ||
        (now.hour == clockInLimitHour && now.minute > clockInLimitMinute)) {
      // Increment late count
      trainee.incrementLateCount();

      // Send late arrival notification
      _notificationService.sendEmail(
        trainee.email,
        lateArrivalSubject,
        lateArrivalMessage,
      );

      // Check if late count reaches three
      if (trainee.lateCount >= 3) {
        // Send expulsion notification
        _sendExpulsionEmail(trainee);
      }
    }
  }

  void _sendExpulsionEmail(Trainee trainee) {
    const expulsionSubject =
        'Expulsion Notification'; // Changed const back to final
    final expulsionMessage =
        'Dear ${trainee.name},\n\nYou have been expelled from the program due to three late arrivals. Please contact your trainer for further assistance.'; // Changed const back to final

    // Send email to the trainee
    _notificationService.sendEmail(
      trainee.email,
      expulsionSubject,
      expulsionMessage,
    );

    // Send a copy to the trainer
    _notificationService.sendEmail(
      trainee.trainerEmail,
      expulsionSubject,
      expulsionMessage,
    );
  }
}
