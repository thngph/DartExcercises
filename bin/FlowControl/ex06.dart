import 'dart:io';

/*
Write a program that prompts the user to input a positive integer. It should then
output a message indicating whether the number is a prime number. A prime
number is a number which is divisible by only two numbers: 1 and itself.
*/

void main() {
  print('Enter a positive integer:');
  var number = int.tryParse(stdin.readLineSync() ?? "");

  while (number == null || number < 0) {
    print('Bad number! Reenter a positive integer:');
    number = int.tryParse(stdin.readLineSync() ?? "");
  }

  var isPrime = true;
  for (var i = 2; i <= number ~/ 2; i++)
  //from 1 to sqrt(number) for a little bit better if dart:math is imported :))
  {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    print('$number is a prime number');
  } else {
    print('$number is not a prime number');
  }
}
