import 'dart:io';

/*
Write a program that converts a name into initials. You can assume the program
takes in two words with one space in between them. The output should be two
capital letters with a dot separating them.
Example: Sam Smith → S.S
*/

void main() {
  print('Enter a name:');
  var name = stdin.readLineSync() ?? "";
  var initials = [];
  name.split(' ').forEach((word) {
    initials.add(word[0].toUpperCase());
  });
  print('The initials are ${initials.join('.')}');
}
