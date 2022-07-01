import 'dart:io';
/*
Create an enum Weekday with constants for MONDAY, TUESDAY, ... until SUNDAY.
Write a program that takes a day from user using its reference (1, 2, ..., 7) and print
"Holiday" if the day is SATURDAY or SUNDAY, else print "not Holiday".
Note: Try to use only enum and the Conditional Operators (condition ? expr1 : expr2)
*/

enum weekDay { MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY }

void main() {
  print("Enter any number in range from 1 to 7:");

  int number = int.tryParse(stdin.readLineSync() ?? "") ?? -1;
  while (number < 1 || number > 7) {
    print("Bad day number! Enter a day number (1-7):");
    number = int.tryParse(stdin.readLineSync() ?? "") ?? -1;
  }
  var day = weekDay.values[number - 1];
  (day == weekDay.SATURDAY || day == weekDay.SUNDAY)
      ? print("Holiday")
      : print("not Holiday");
}
