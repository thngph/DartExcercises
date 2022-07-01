import 'dart:io';
import 'dart:math';

/*
Generate a random number between 1 and 10. The user has 3 tries to guess the number.
Print "Hard Luck ---- the number is ..." if he loses and "Good Job" if he wins.
*/

void main() {
  var random = new Random();
  var number = random.nextInt(10) + 1;
  int? guess = 0;
  var tries = 3;
  while (tries > 0) {
    print('Enter a number:');
    guess = int.tryParse(stdin.readLineSync() ?? "");
    if (guess == number) {
      print('Good Job!');
      break;
    }
    tries--;
    if (tries == 0) {
      print('Hard Luck ---- the number is ${number}');
    }
  }
}
