import 'dart:io';

/*
Write a Dart function that accepts a string as a parameter and converts the first
letter of each word of the string in upper case.
Example String: 'the best day ever'
Expected Output: 'The Best Day Ever '
*/

String capitalize(String string) {
  var newString = '';
  var words = string.split(' ');
  for (var i = 0; i < words.length; i++) {
    newString += words[i][0].toUpperCase() + words[i].substring(1) + ' ';
  }
  return newString.trim();
}

void main() {
  print('Enter a string:');
  var string = stdin.readLineSync() ?? "";
  print(capitalize(string));
  //Alternative
  // print(string.split(' ').map((e) => e[0].toUpperCase() + e.substring(1)).join(' '));
  //Alternative 2
  // print(titleCase(string));
}
