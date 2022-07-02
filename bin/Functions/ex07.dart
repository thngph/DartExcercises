import 'dart:io';

/*
Write a Dart function that returns a passed lowercase string with letters in
alphabetical order.
Example string: 'flutter’
Expected Output: 'eflrttu’
Assume punctuation and numbers symbols are not included in the passed string.
*/
String sortString(String string) {
  var chars = string.toLowerCase().split('');
  chars.sort();
  return chars.join('');
}

void main() {
  print('Enter a string:');
  var string = stdin.readLineSync() ?? "";
  print(sortString(string));
}
