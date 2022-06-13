import 'dart:io';

void main() {
  stdout.write("What's your name?\n");
  String name = stdin.readLineSync() ?? "";
  if (name.isEmpty) {
    name = "the-one-who-has-no-name";
  }
  print("Hi, $name! What's your age?");
  int age = int.tryParse(stdin.readLineSync() ?? "") ?? -1;
  while (age < 0) {
    print("Bad age! Be honest and re-enter your age:");
    age = int.tryParse(stdin.readLineSync() ?? "") ?? -1;
  }
  int yearsToHunderd = 100 - age;
  print("$name, You will turn 100 in $yearsToHunderd years");
}
