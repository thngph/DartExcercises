import 'dart:io';

/*
Write a program to calculate the factorial value of a given number.
Factorial x = x * x-1 * x-2 * ... *1
*/

void main() {
  print('Enter a number:');
  var number = num.tryParse(stdin.readLineSync() ?? "");

  while (number == null) {
    print('Bad number! Reenter a number:');
    number = num.tryParse(stdin.readLineSync() ?? "");
  }

  var factorial = 1;
  for (var i = 1; i <= number; i++) {
    factorial *= i;
  }
  print('The factorial of ${number.toInt()} is $factorial');
}
