import 'dart:io';

/*
Write a Dart function that prints the characters that occur two times in a given string.
Example String: 'Firebase and Flutter’'
Expected Output: 'F R A T’
*/
String printTwice(String string) {
  var chars = string.toUpperCase().replaceAll(' ', '').split('');
  Set twice = {};
  for (var i = 0; i < chars.length; i++) {
    var count = 0;
    for (var j = 0; j < chars.length; j++) {
      if (chars[i] == chars[j]) {
        count++;
      }
    }
    if (count == 2) {
      twice.add(chars[i]);
    }
  }
  return twice.join(' ');
}

void main() {
  print('Enter a string:');
  var string = stdin.readLineSync() ?? "";
  print(printTwice(string));
}
