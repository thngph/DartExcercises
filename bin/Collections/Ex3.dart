void main() {

  var boys = {"Peter", "John", "Jamie", "Kit", "Iain", "Taylor"};
  var girls = {"Lena", "Emilia", "Taylor", "Sophie", "Jamie", "Maisie"};

  print("boys = $boys");
  print("girls = $girls\n");

  boys.add("Daniel");
  girls.addAll({"Anna", "Betsy"});

  print("boys = $boys");
  print("girls = $girls\n");

  var all = boys.union(girls);
  print("all = $all");

  var both = boys.intersection(girls);
  print("both = $both");

  var onlyBoys = boys.difference(girls);
  print("onlyBoys = $onlyBoys\n");

  boys.removeAll(both);
  print("boys = $boys");
  
  girls.remove("Lena");
  print("girls = $girls\n");

  onlyBoys.contains("Taylor") ? print("Yes\n") : print("No\n");
  
  all.clear();
  print("all = $all\n");

  var listOfBoys = onlyBoys.toList();
  print("listOfBoys = $listOfBoys");
  print("Length = ${listOfBoys.length}");

}