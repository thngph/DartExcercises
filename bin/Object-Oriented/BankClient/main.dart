import 'BankClient.dart';

void main() {
  BankClient client1 = BankClient('Alice');
  print('Add 500 to Alice');
  client1.add(500);
  print(client1.balance);
  print('Withdraw 100 from Alice');
  client1.subtractIfPossible(100);
  print(client1.balance);

  BankClient client2 = BankClient('Bob');
  print('Add 200 to Bob');
  client2.add(200);
  print(client2.balance);
  print('Withdraw 1000 from Bob');
  client2.subtractIfPossible(1000);
  print(client2.balance);

  BankClient.printBankBalance();
  BankClient.printNumberOfClients();
}
