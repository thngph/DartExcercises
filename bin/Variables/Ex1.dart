import 'dart:io';

/*
Write a program that asks the user to enter their name and their age. 
Print out a message addressed to them that tells them 
the year that they will turn 100 years old.
*/

void main() {
  stdout.write("What's your name?\n");
  String name = stdin.readLineSync() ?? "";
  // if name is null, assign to it default value "the-one-who-has-no-name"
  if (name.isEmpty) {
    name = "the-one-who-has-no-name";
  }

  print("Hi, $name! What's your age?");
  int age = int.tryParse(stdin.readLineSync() ?? "") ?? -1;
  // if age is null, let user re-enter
  while (age < 0) {
    print("Bad age! Enter your age again:");
    age = int.tryParse(stdin.readLineSync() ?? "") ?? -1;
  }

  int yearsToHunderd = 100 - age;
  print("$name, you will turn 100 in $yearsToHunderd years");
}
