import 'dart:io';

/*
Write a program to accept a grade and display the equivalent description
*/

void main() {
  var grades = {
    'E': 'Excellent',
    'V': 'Very Good',
    'G': 'Good',
    'A': 'Average',
    'F': 'Fail'
  };

  print('Enter a grade:');
  var grade = stdin.readLineSync() ?? "";
  print(grades[grade.toUpperCase()] ?? 'Invalid grade');
}
