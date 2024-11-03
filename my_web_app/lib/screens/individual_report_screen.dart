// lib/screens/individual_report_screen.dart
import 'package:flutter/material.dart';

class IndividualReportScreen extends StatelessWidget {
  const IndividualReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Individual Report')),
      body: const Center(
        child: Text('Individual Report Details'),
      ),
    );
  }
}
