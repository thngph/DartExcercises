import 'Client.dart';

void main() {
  Client client = Client('John');
  client.addPurchasesAmount(100);
  client.addPurchasesAmount(200);
  client.addPurchasesAmount(300);
  print('Client has ${client.getPurchasesAmount()}');

  LoyalClient royalClient = LoyalClient('John');
  royalClient.addPurchasesAmount(100);
  royalClient.addPurchasesAmount(200);
  royalClient.addPurchasesAmount(300);
  print('RoyalClient has ${royalClient.getLoyalPurchasesAmount()}');
  print('RoyalClient after discount has ${royalClient.discount()}');
}
