import 'dart:io';

/*
Write a program to calculate the sum of the first N natural number.
*/

void main() {
  print('Enter a number:');
  var number = num.tryParse(stdin.readLineSync() ?? "");

  while (number == null) {
    print('Bad number! Reenter a number:');
    number = num.tryParse(stdin.readLineSync() ?? "");
  }

  var sum = 0;
  for (var i = 1; i <= number; i++) {
    sum += i;
  }
  print('The sum of the first ${number.toInt()} natural numbers is $sum');
}
