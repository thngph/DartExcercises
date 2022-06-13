import 'dart:io';

void main() {
    print("Hi there, can you enter devidend?");
    double num = double.tryParse(stdin.readLineSync() ?? "")??double.nan;
  
  // Re-enter if a non-numeric value is enterred
    while (num.isNaN){
      print("Not a number. Retry with a number:");
      num = double.tryParse(stdin.readLineSync() ?? "")??double.nan;
    }

  print("Hi there, can you enter devisor?");
    double check = double.tryParse(stdin.readLineSync() ?? "")??double.nan;
  
  // Re-enter if a non-numeric value is enterred
    while (check.isNaN){
      print("Not a number. Retry with a number:");
      check = double.tryParse(stdin.readLineSync() ?? "")??double.nan;
    }
  
  // Convert to int
    int devidend = num.toInt();

    int devisor = check.toInt();
    // Print result
    
    if (devidend%devisor == 0){
      int res = (devidend~/devisor);
      print("$devidend is evenly devided by $devisor, (exactly $res times).");
    }
    else{
      print("$devidend is NOT evenly devided by $devisor!");
    };
}