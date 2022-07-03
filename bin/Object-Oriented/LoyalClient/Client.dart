/*
Design a Client and LoyalClient class
Create a class Client that has 2 private attributes:
Name (can't be changed).
PurchasesAmount (double) have 2 methods (get, add).
Create a constructor that initializes the name.
Create a class LoyalClient that has 1 private attribute:
PurchasesAmount (double) have 1 method (get).
Create a method called discount that assigned to PurchasesAmount (subclass)
the value of PurchasesAmount (superclass) after reduction of 10%.
Create a small test program (main).
Note: Use different names for the get methods.
*/

class Client {
  String _name;
  double _purchasesAmount = 0;

  Client(this._name);

  double getPurchasesAmount() {
    return _purchasesAmount;
  }

  void addPurchasesAmount(double amount) {
    _purchasesAmount += amount;
  }
}

class LoyalClient extends Client {
  double _purchasesAmount = 0;

  LoyalClient(String name) : super(name);

  double getLoyalPurchasesAmount() {
    return _purchasesAmount;
  }

  void addPurchasesAmount(double amount) {
    _purchasesAmount += amount;
  }

  double discount() {
    return _purchasesAmount * 0.9;
  }
}
