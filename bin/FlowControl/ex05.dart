import 'dart:io';

/*
Write a program that prompts the user to input an integer and then outputs the
number with the digits reversed. For example, if the input is 12345, the output
should be 54321.
*/

void main() {
  print('Enter a number to be reversed:');
  var number = int.tryParse(stdin.readLineSync() ?? "");

  while (number == null) {
    print('Bad number! Reenter a number:');
    number = int.tryParse(stdin.readLineSync() ?? "");
  }

  var reversed = 0;
  while (number! > 0) {
    reversed = (reversed * 10) + (number % 10);
    number ~/= 10;
  }
  print('The reversed number is $reversed');
}
