import 'dart:io';

void main() {
  result();
}

void result() {
  List<Map<String, dynamic>> allStudents = [];

  print("How many students?");
  int numberOfStudents = int.parse(stdin.readLineSync()!);

  for (int s = 0; s < numberOfStudents; s++) {
    print("\nStudent ${s + 1}");

    print("Enter Student Name:");
    String name = stdin.readLineSync()!;

    print("Enter Roll Number:");
    int rollNo = int.parse(stdin.readLineSync()!);

    print("Enter Class:");
    String className = stdin.readLineSync()!;

    print("Enter Section:");
    String section = stdin.readLineSync()!;

    List<String> subjects = [];
    List<double> obtainedMarks = [];
    List<double> totalMarks = [];
    List<double> percentages = [];

    print("How many subjects?");
    int totalSubjects = int.parse(stdin.readLineSync()!);

    double totalObtained = 0;
    double grandTotal = 0;

    for (int i = 0; i < totalSubjects; i++) {
      print("\nEnter name of Subject ${i + 1}:");
      String subjectName = stdin.readLineSync()!;

      subjects.add(subjectName);

      print("Enter Total Marks of $subjectName:");
      double tMarks = double.parse(stdin.readLineSync()!);

      print("Enter Obtained Marks of $subjectName:");
      double oMarks = double.parse(stdin.readLineSync()!);

      totalMarks.add(tMarks);
      obtainedMarks.add(oMarks);

      totalObtained += oMarks;
      grandTotal += tMarks;

      double p = percentage(oMarks, tMarks);

      percentages.add(p);

      print("Percentage of $subjectName = ${p.toStringAsFixed(2)}");

      print("Grade of $subjectName:");
      grading(p);
    }

    double finalPercentage =
    percentage(totalObtained, grandTotal);

    print("\nFinal Percentage = ${finalPercentage.toStringAsFixed(2)}");

    print("Final Grade:");
    grading(finalPercentage);

    print("Division:");
    division(finalPercentage);

    print("Remarks:");
    remarks(finalPercentage);

    Map<String, dynamic> studentData = {
      "name": name,
      "rollNo": rollNo,
      "class": className,
      "section": section,
      "subjects": subjects,
      "obtainedMarks": obtainedMarks,
      "totalMarks": totalMarks,
      "percentages": percentages,
      "totalObtained": totalObtained,
      "grandTotal": grandTotal,
      "finalPercentage": finalPercentage
    };

    allStudents.add(studentData);
  }

  print("\nAll Students Record");

  for (var student in allStudents) {
    print("\nStudent Name: ${student["name"]}");
    print("Roll Number: ${student["rollNo"]}");
    print("Class: ${student["class"]}");
    print("Section: ${student["section"]}");
    print("Subjects: ${student["subjects"]}");
    print("Obtained Marks: ${student["obtainedMarks"]}");
    print("Total Marks: ${student["totalMarks"]}");
    print("Subject Percentages: ${student["percentages"]}");
    print("Total Obtained: ${student["totalObtained"]}");
    print("Grand Total: ${student["grandTotal"]}");
    print(
        "Final Percentage: ${student["finalPercentage"].toStringAsFixed(2)}");
  }
}

double percentage(double om, double tm) {
  double percent = om / tm * 100;
  return percent;
}

void grading(double marks) {
  if (marks >= 80 && marks <= 100) {
    print("Grade A");
  } else if (marks >= 70 && marks < 80) {
    print("Grade B");
  } else if (marks >= 60 && marks < 70) {
    print("Grade C");
  } else if (marks >= 50 && marks < 60) {
    print("Grade D");
  } else {
    print("Fail");
  }
}

void division(double percentage) {
  if (percentage >= 80) {
    print("First Division");
  } else if (percentage >= 60) {
    print("Second Division");
  } else if (percentage >= 50) {
    print("Third Division");
  } else {
    print("No Division");
  }
}

void remarks(double percentage) {
  if (percentage >= 90) {
    print("Excellent Performance");
  } else if (percentage >= 75) {
    print("Very Good");
  } else if (percentage >= 60) {
    print("Good");
  } else if (percentage >= 50) {
    print("Average");
  } else {
    print("Need Improvement");
  }
}