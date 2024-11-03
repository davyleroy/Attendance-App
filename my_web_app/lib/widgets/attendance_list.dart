// lib/widgets/attendance_list.dart
import 'package:flutter/material.dart';

class AttendanceList extends StatelessWidget {
  final List<String> attendanceRecords;

  const AttendanceList({super.key, required this.attendanceRecords});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: attendanceRecords.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(attendanceRecords[index]),
        );
      },
    );
  }
}
