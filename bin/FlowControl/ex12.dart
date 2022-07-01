import 'dart:io';

/*
Write a program that calculates the average number of given numbers from user
and ask the user every time for more numbers. If a user says "yes" ask him for
another number and if "No" give the average.
*/

void main() {
  print('Enter a number:');
  var number = num.tryParse(stdin.readLineSync() ?? "");
  num sum = 0;
  var count = 0;
  while (number != null) {
    sum += number;
    count++;
    print('Want to enter another number? (Y/n)');
    var answer = stdin.readLineSync()?.toLowerCase();
    if (answer == 'y') {
      number = num.tryParse(stdin.readLineSync() ?? "");
    } else
      break;
  }
  print('The average of the given numbers is ${sum / count}');
}
