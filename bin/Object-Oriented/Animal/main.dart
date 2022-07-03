import 'Animal.dart';

void main() {
  Dog dog = Dog('Doge');
  dog.printName();
  dog.printSound();

  Cat cat = Cat('Kitty');
  cat.printName();
  cat.printSound();

  Cow cow = Cow('MooMoo');
  cow.printName();
  cow.printSound();
}
