import 'dart:io';

/* 
Ask the user for a number. Depending on whether the number is even or odd, print
out an appropriate message to the user. If the number is a multiple of 4, print out a
different message.
*/
void main() {
  print("Hi there, can you enter a number?");
  double number = double.tryParse(stdin.readLineSync() ?? "") ?? double.nan;

  // Re-enter if a non-numeric value is enterred
  while (number.isNaN) {
    print("Not a number. Retry with a number:");
    number = double.tryParse(stdin.readLineSync() ?? "") ?? double.nan;
  }

  // Convert to int
  int intNumber = number.toInt();

  // Print result
  if (intNumber.isOdd) {
    print("$intNumber is Odd.");
  } else {
    if (intNumber % 4 == 0) {
      print("$intNumber is Even, and a multiple of 4.");
    } else {
      print("$intNumber is Even.");
    }
    ;
  }
  ;
}
