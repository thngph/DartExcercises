import 'dart:io';

/* 
Write a program that accepts three numbers from the user and prints increasing if
the numbers are in increasing order, decreasing if the numbers are in decreasing
order, and neither increasing or decreasing order otherwise.
*/

void main() {
  print('Enter three numbers:');
  var num1 = num.tryParse(stdin.readLineSync() ?? "");
  var num2 = num.tryParse(stdin.readLineSync() ?? "");
  var num3 = num.tryParse(stdin.readLineSync() ?? "");

  while (num1 == null || num2 == null || num3 == null) {
    print('Bad number! Reenter three numbers:');
    num1 = num.tryParse(stdin.readLineSync() ?? "");
    num2 = num.tryParse(stdin.readLineSync() ?? "");
    num3 = num.tryParse(stdin.readLineSync() ?? "");
  }

  if (num1 < num2 && num2 < num3) {
    print('Increasing');
  } else if (num1 > num2 && num2 > num3) {
    print('Decreasing');
  } else {
    print('Neither increasing nor decreasing');
  }
}
