import 'dart:io';

/*
Write a program to get a number from the user and print if it is positive or negative
*/

void main() {
  print('Enter a number:');
  var number = num.tryParse(stdin.readLineSync() ?? "");

  while (number == null) {
    print('Bad number! Reenter a number:');
    number = num.tryParse(stdin.readLineSync() ?? "");
  }

  if (number >= 0) {
    print('Positive');
  } else {
    print('Negative');
  }
}
