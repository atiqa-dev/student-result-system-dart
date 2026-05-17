import 'package:flutter/material.dart';
import 'student_marks_entry.dart';

class SetupClassDetailsWidget extends StatefulWidget {
  const SetupClassDetailsWidget({super.key});

  static String routePath = '/setupClassDetails';

  @override
  State<SetupClassDetailsWidget> createState() => _SetupClassDetailsWidgetState();
}

class _SetupClassDetailsWidgetState extends State<SetupClassDetailsWidget> {
  final _classController = TextEditingController();
  final _sectionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Setup Class Details")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: _classController, decoration: const InputDecoration(labelText: "Class Name")),
            TextField(controller: _sectionController, decoration: const InputDecoration(labelText: "Section")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  StudentMarksEntryWidget.routePath,
                  arguments: {
                    "className": _classController.text,
                    "section": _sectionController.text,
                  },
                );
              },
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
