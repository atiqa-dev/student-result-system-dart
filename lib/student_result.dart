import 'package:flutter/material.dart';
import 'main.dart'; // backend functions

class StudentResultWidget extends StatelessWidget {
  const StudentResultWidget({super.key});

  static String routePath = '/studentResult';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    double finalPercentage = args["finalPercentage"];

    return Scaffold(
      appBar: AppBar(title: const Text("Result")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${args["name"]}"),
            Text("Roll No: ${args["rollNo"]}"),
            Text("Subjects: ${args["subjects"]}"),
            Text("Obtained Marks: ${args["obtainedMarks"]}"),
            Text("Total Marks: ${args["totalMarks"]}"),
            const SizedBox(height: 20),
            Text("Final Percentage: ${finalPercentage.toStringAsFixed(2)}%"),
            Text("Grade: ${grading(finalPercentage)}"),
            Text("Division: ${division(finalPercentage)}"),
            Text("Remarks: ${remarks(finalPercentage)}"),
          ],
        ),
      ),
    );
  }
}
