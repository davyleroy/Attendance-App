// lib/models/attendance.dart
class Attendance {
  final String traineeId;
  final DateTime clockInTime;
  DateTime? clockOutTime;
  DateTime? pauseStartTime;
  DateTime? pauseEndTime;

  Attendance({
    required this.traineeId,
    required this.clockInTime,
    this.clockOutTime,
    this.pauseStartTime,
    this.pauseEndTime,
  });

  // Method to clock out
  void clockOut() {
    clockOutTime = DateTime.now();
  }

  // Method to start a pause
  void startPause() {
    pauseStartTime = DateTime.now();
  }

  // Method to end a pause
  void endPause() {
    pauseEndTime = DateTime.now();
  }

  // Method to calculate total time worked
  Duration getTotalTimeWorked() {
    final endTime = clockOutTime ?? DateTime.now();
    final totalPauseDuration = (pauseEndTime != null && pauseStartTime != null)
        ? pauseEndTime!.difference(pauseStartTime!)
        : Duration.zero;

    return endTime.difference(clockInTime) - totalPauseDuration;
  }
}
