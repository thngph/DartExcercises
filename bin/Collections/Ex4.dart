void main() {

  
  var student = {
    "name": "Hung Nguyen",
    "gender": "Male",
    "age": 22,
    "id": 123456789,
    "phone": 565689891,
    "email": "hungnm@devera.vn",
  };

  student.addAll({"statedID": "WA", "yearEnrolled": 2017});
  print("student = $student\n");

  student.containsKey("phone") ? student.remove("phone") : print("No\n");
  print("student = $student\n");

  print("keys = ${student.keys}");

  student.containsValue(20) ? print("Yes\n") : print("No\n");

  print("values = ${student.values}\n");

  student.update("age", (value) => 23);

  student["phone"] = 213456789;

  print("student = $student\n");

  print("length = ${student.length}\n");

  student.clear();

  print("student = $student");

}