/*
Make a simple bank client
Create a class called BankClient that has 3 private attributes:
Id which is generated automatically and represents the order of the client
in the bank Data Base (starting from 1 and can't be changed).
Name (can't be changed).
Balance has 3 methods (get, add, subtractIfPossible).
Create a constructor that uses the "Initializer list" to initialize the name.
Create a static method that prints the number of clients and the bank balance.
Create a small test program (main).
Note: The balance is initialized at 0 and can't be negative.
*/

class BankClient {
  static int counter = 0;
  static double bankBalance = 0;

  final int _id = counter;
  final String _name;
  double _balance = 0;

  BankClient(this._name) {
    counter++;
  }

  static void printNumberOfClients() {
    print('Number of clients: ${BankClient.counter}');
  }

  static void printBankBalance() {
    print('Bank balance: ${BankClient.bankBalance}');
  }

  double get balance => _balance;

  void add(double amount) {
    _balance += amount;
    bankBalance += amount;
  }

  bool subtractIfPossible(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      bankBalance -= amount;
      return true;
    }
    return false;
  }
}
