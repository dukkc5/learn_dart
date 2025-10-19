void main() {
  //Object Oriented Programming (OOP)
  // 1, Polymorphism : is the ability of an object to take on many forms
  Cat cat = Cat();
  cat.sound();
  Dog dog = Dog();
  dog.sound();
  // 2 , Abstraction : is the process of hiding internal details and complexity of an object and only exposing the essential features and funtionalities.
  TreeAnimal bird = Bird();
  bird.makeSomeNoise();
  // abstract class can create a object with its constructor
  // TreeAnimal bird = TreeAnimal(); ->> wrong

  // 3 , Inheritance: Lesson 10
  
  // 4 , Encapsulation: is the bunding of data and methods together as a single unit , and the data is hidden
}

//abstraction
abstract class TreeAnimal {
  void makeSomeNoise();
}

// Polymorphism
class Animal {
  void sound() {
    print('Animal making sound');
  }
}

class Cat extends Animal {
  void sound() {
    print('Cat making sound');
  }
}

class Dog extends Animal {
  void sound() {
    print('Dog make sound');
  }
}

// Abstraction
class Bird implements TreeAnimal {
  @override
  void makeSomeNoise() {
    print('Hot hot');
  }
}

// Encapsulation
class Person {
  String? _name;
  String? get name => _name;
  // private data , user getter and setter to work with private data
}
