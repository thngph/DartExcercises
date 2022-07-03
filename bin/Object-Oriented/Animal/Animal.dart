/*
Design a class
Create an abstract class called Animal that has 2 abstract methods:
printName();
printSound();
Create 3 classes: Dog , Cat and Cow that extends the Animal Class.
Create a small test program (main).
*/

abstract class Animal {
  String _name;
  String _sound;

  Animal(this._name, this._sound);

  void printName() {
    print('Name: $_name');
  }

  void printSound() {
    print('Sound: $_sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name, 'Woof');
}

class Cat extends Animal {
  Cat(String name) : super(name, 'Meow');
}

class Cow extends Animal {
  Cow(String name) : super(name, 'Moo');
}
