void main() {
  Car car = Car();
  print(car.speed);
  car.printSomething();
  Truck truck = Truck();
  print(truck.speed);
  truck.printSomething();

  Vehicle car1 = Car();
  print(
    (car1 as Car).numOfWheels,
  ); // car1 doesnt have attributes of class Car , only Vehicle
  // if want to use attributes of class Car need to use as
  // It is as same as Type Coercion
  //But you can only use as with the class whose constructor is being used.
  // (car1 as Truck) -> it's wrong
  Car car2 = Car();
  print(car2.speed);
  car2.accelerate();
  print(car2.speed);
}

class SomeClass {
  int speed = 15;
  void accelerate() {
    speed += 30;
  }
  /*When overridden, the object of the child class will use 
  the new method of the child class and
   not use that method in the parent class.*/
}

class Vehicle extends SomeClass {
  bool isEngineWorking = false;

  @override
  void accelerate() {
    speed += 10;
  }
  /*If the parent class has a method
   that the child class wants to rewrite, 
   it needs to use @override.*/
}

class Car extends Vehicle {
  // Dart doesn't support  multiple inheritance
  // Class in dart can inherit at multiple levels
  // Car extends A , B -> it's wrong
  int numOfWheels = 4;
  void printSomething() {
    print(numOfWheels);
  }
}

class Truck extends Vehicle {
  int numOfWheels = 8;
  void printSomething() {
    print(numOfWheels);
  }
}
