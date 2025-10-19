void main() {
  biDog gaugau = biDog();
  print(gaugau.name);
  print(gaugau.weight);
  gaugau.sound();
  // you can see that , gaugau can use atributes of class Animals without overriding but need to override from dog
}

class Animals {
  String name = 'Animal';
  int weight = 100;
}

class dog extends Animals {
  bool isBeautiful = false;
  void sound() {
    print("go go");
  }
}

/*When using the implements keyword,
 the child class must always override all properties
 and methods of the parent class. */
class biDog extends Animals implements dog {
  // a class can extends and implements together
  // but with extends we will have only one parent class while we can implements many different classes
  @override
  bool isBeautiful = true;
  @override
  void sound() {
    print("gru gru");
  }
}
