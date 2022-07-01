import 'dart:io';

/*
Write a program that prints the number of days in month (input: 1...12). Note: Here
we are not checking leap year, so we fixed 28 days for February.
*/

void main() {
  print('Enter a number:');
  var number = num.tryParse(stdin.readLineSync() ?? "");

  while (number == null || number < 1 || number > 12) {
    print('Bad number! Reenter a number:');
    number = num.tryParse(stdin.readLineSync() ?? "");
  }

  switch (number) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      print('The number of days in month ${number.toInt()} is 31');
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      print('The number of days in month ${number.toInt()} is 30');
      break;
    case 2:
      print('The number of days in month ${number.toInt()} is 28');
      break;
    default:
      print('The number of days in month ${number.toInt()} is 0');
      break;
  }
}
