//An abstract class can contain everything that a regular class can contain:
void main() {
  // Animal a = Animal(); -> error because we can create an object from an abstract class
}

abstract class Animal {
  String body = 'body';
  void
  sound(); // this is a feature in abstract class , we can declare function without body
}

class Dog extends Animal {
  // when extends an abstract class , only need to override methods
  @override
  void sound() {
    print("gau gau");
  }
}

class Cat implements Animal {
  // when implements an abstract class , need to override all atributes and methods of it.
  @override
  String body = 'small';
  @override
  void sound() {
    print("meo meo");
  }
}
