// Q22:Write a program that takes a list of student details as input, where
// each student is represented by a map containing their name, marks,
// section, and roll number. The program should determine the grade of
// each student based on their average score (assuming maximum marks
// for each subject is 100) and print the student's name along with their
// grade.

// Example:
// List<Map<String, dynamic>> studentDetails = [
//     {'name': 'John', 'marks': [80, 75, 90], 'section': 'A', 'rollNumber': 101},
//     {'name': 'Emma', 'marks': [95, 92, 88], 'section': 'B', 'rollNumber': 102},
//     {'name': 'Ryan', 'marks': [70, 65, 75], 'section': 'A', 'rollNumber': 103},
//   ];

import 'dart:io';

void main() {
  print("Enter the number of students:");
  int numberOfStudents = int.parse(stdin.readLineSync()!);

  List<Map<String, dynamic>> studentDetailsList = [];

  for (int i = 1; i <= numberOfStudents; i++) {
    print("\nEnter details for student $i:");

    Map<String, dynamic> studentDetails = {
      "name": "",
      "marks": 0,
      "section": "",
      "rollNumber": "",
    };

    print("Enter student name:");
    studentDetails["name"] = stdin.readLineSync()!;

    print("Enter marks (out of 100):");
    studentDetails["marks"] = int.parse(stdin.readLineSync()!);

    print("Enter section:");
    studentDetails["section"] = stdin.readLineSync()!;

    print("Enter roll number:");
    studentDetails["rollNumber"] = stdin.readLineSync()!;

    studentDetailsList.add(studentDetails);
  }

  print("\nStudent Grades:");

  for (Map<String, dynamic> student in studentDetailsList) {
    String name = student["name"];
    int marks = student["marks"];
    double average = marks / 100.0;

    String grade = calculateGrade(average);

    print("$name - Grade: $grade");
  }
}

String calculateGrade(double average) {
  if (average >= 0.9) {
    return "A";
  } else if (average >= 0.8) {
    return "B";
  } else if (average >= 0.7) {
    return "C";
  } else if (average >= 0.6) {
    return "D";
  } else {
    return "F";
  }
}
