import 'dart:io';

enum weekDay { MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY }

void main() {
  print("Enter any number in range 1 to 7:");

  String? number = stdin.readLineSync();
  try{
    var day = weekDay.values[int.parse(number!) - 1];
    (day == weekDay.SATURDAY || day == weekDay.SUNDAY) ? print("Holiday") : print("not Holiday");
  }
  catch(e){
    print("Not a number in range 1 to 7~");
  }
}