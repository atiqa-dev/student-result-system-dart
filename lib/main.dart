import 'package:flutter/material.dart';

// Import your UI screens
import 'splash_screen.dart';
import 'setup_class_details.dart';
import 'student_marks_entry.dart';
import 'student_result.dart';
import 'leader_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreenWidget.routePath,
      routes: {
        SplashScreenWidget.routePath: (context) => const SplashScreenWidget(),
        SetupClassDetailsWidget.routePath: (context) => const SetupClassDetailsWidget(),
        StudentMarksEntryWidget.routePath: (context) => const StudentMarksEntryWidget(),
        StudentResultWidget.routePath: (context) => const StudentResultWidget(),
        LeaderBoardWidget.routePath: (context) => const LeaderBoardWidget(),
      },
    );
  }
}

// ----------------- Backend Logic (UI integrated) -----------------

class Student {
  String name;
  int rollNo;
  String className;
  String section;
  List<String> subjects;
  List<double> obtainedMarks;
  List<double> totalMarks;
  List<double> percentages;
  double totalObtained;
  double grandTotal;
  double finalPercentage;

  Student({
    required this.name,
    required this.rollNo,
    required this.className,
    required this.section,
    required this.subjects,
    required this.obtainedMarks,
    required this.totalMarks,
    required this.percentages,
    required this.totalObtained,
    required this.grandTotal,
    required this.finalPercentage,
  });
}

// Utility functions
double percentage(double om, double tm) => om / tm * 100;

String grading(double marks) {
  if (marks >= 80 && marks <= 100) return "Grade A";
  if (marks >= 70 && marks < 80) return "Grade B";
  if (marks >= 60 && marks < 70) return "Grade C";
  if (marks >= 50 && marks < 60) return "Grade D";
  return "Fail";
}

String division(double percentage) {
  if (percentage >= 80) return "First Division";
  if (percentage >= 60) return "Second Division";
  if (percentage >= 50) return "Third Division";
  return "No Division";
}

String remarks(double percentage) {
  if (percentage >= 90) return "Excellent Performance";
  if (percentage >= 75) return "Very Good";
  if (percentage >= 60) return "Good";
  if (percentage >= 50) return "Average";
  return "Need Improvement";
}
