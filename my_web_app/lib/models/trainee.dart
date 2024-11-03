// lib/models/trainee.dart
class Trainee {
  final String id;
  final String name;
  final String classId;
  int lateCount;
  final String email; // Trainee's email
  final String trainerEmail; // Trainer's email

  Trainee({
    required this.id,
    required this.name,
    required this.classId,
    required this.email,
    required this.trainerEmail,
    this.lateCount = 0,
  });

  // Method to increment late count
  void incrementLateCount() {
    lateCount++;
  }

  // Method to reset late count
  void resetLateCount() {
    lateCount = 0;
  }
}
