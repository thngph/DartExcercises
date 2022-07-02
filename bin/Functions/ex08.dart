import 'dart:io';

/*
Write a Dart function that accepts a string and calculates the number of uppercase
letters, lower case letters, numbers and symbols (we don't take in count the space).
*/
Map letterCount(String string) {
  string = string.replaceAll(" ", "");
  var uppercase = 0, lowercase = 0, numbers = 0, symbols = 0;
  for (var i = 0; i < string.length; i++) {
    if ((string[i].compareTo('A') >= 0 && string[i].compareTo('Z') <= 0)) {
      uppercase++;
    } else if ((string[i].compareTo('a') >= 0 &&
        string[i].compareTo('z') <= 0)) {
      lowercase++;
    } else if (string[i].compareTo('0') >= 0 && string[i].compareTo('9') <= 0) {
      numbers++;
    } else {
      symbols++;
    }
  }
  return {
    'uppercase': uppercase,
    'lowercase': lowercase,
    'numbers': numbers,
    'symbols': symbols
  };
}

void main() {
  print('Enter a string:');
  var string = stdin.readLineSync() ?? "";

  print(letterCount(string));
}
