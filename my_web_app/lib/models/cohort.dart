// lib/models/class.dart
class Class {
  final String id;
  final String name;
  final List<String> traineeIds; // List of Trainee IDs in this class

  Class({
    required this.id,
    required this.name,
    this.traineeIds = const [],
  });

  // Method to add a trainee to the class
  void addTrainee(String traineeId) {
    traineeIds.add(traineeId);
  }
}
