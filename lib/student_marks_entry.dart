import 'package:flutter/material.dart';
import 'student_result.dart';
import 'main.dart'; // backend functions

class StudentMarksEntryWidget extends StatefulWidget {
  const StudentMarksEntryWidget({super.key});

  static String routePath = '/studentMarksEntry';

  @override
  State<StudentMarksEntryWidget> createState() => _StudentMarksEntryWidgetState();
}

class _StudentMarksEntryWidgetState extends State<StudentMarksEntryWidget> {
  final _nameController = TextEditingController();
  final _rollController = TextEditingController();
  final _subjectController = TextEditingController();
  final _obtainedController = TextEditingController();
  final _totalController = TextEditingController();

  List<String> subjects = [];
  List<double> obtainedMarks = [];
  List<double> totalMarks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter Student Marks")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: const InputDecoration(labelText: "Student Name")),
            TextField(controller: _rollController, decoration: const InputDecoration(labelText: "Roll Number")),
            TextField(controller: _subjectController, decoration: const InputDecoration(labelText: "Subject")),
            TextField(controller: _totalController, decoration: const InputDecoration(labelText: "Total Marks")),
            TextField(controller: _obtainedController, decoration: const InputDecoration(labelText: "Obtained Marks")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  subjects.add(_subjectController.text);
                  totalMarks.add(double.parse(_totalController.text));
                  obtainedMarks.add(double.parse(_obtainedController.text));
                  _subjectController.clear();
                  _totalController.clear();
                  _obtainedController.clear();
                });
              },
              child: const Text("Add Subject"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double totalObtained = obtainedMarks.fold(0, (a, b) => a + b);
                double grandTotal = totalMarks.fold(0, (a, b) => a + b);
                double finalPercentage = percentage(totalObtained, grandTotal);

                Navigator.pushNamed(context, StudentResultWidget.routePath, arguments: {
                  "name": _nameController.text,
                  "rollNo": int.parse(_rollController.text),
                  "subjects": subjects,
                  "obtainedMarks": obtainedMarks,
                  "totalMarks": totalMarks,
                  "finalPercentage": finalPercentage,
                });
              },
              child: const Text("Calculate Result"),
            ),
          ],
        ),
      ),
    );
  }
}
