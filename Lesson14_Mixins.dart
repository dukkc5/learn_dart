
void main() {
  // Mixin :
  //mixin does not establish parent-child relationship
  // Jump a = Jump(); ->> error because mixin like abstract class , can be intialized
  Animal monkey = Animal();
  monkey.fn();
}

mixin Jump {
  int jumping = 10;
}
mixin Sound {
  String sound = 'Haha';
}

class Animal with Jump, Sound {
  // can with multiple mixin
  // use with mixin
  /*mixin helps to combine everything in mixin into class b, 
  it is different from abstract class
   in that b does not need to override everything in class */
  void fn() {
    print(jumping);
  }

  void fn2() {
    print(sound);
  }
}

class Cat extends Animal {
  void func() {
    print(jumping);
  }
}

/*
The on keyword restricts the scope of a mixin.

It's like a GATE ⛔ "input requirement".

When you write mixin A on B, it means:

"This mixin A can only be used by classes that extend B."
The most important reason: Because mixin A wants to call functions or use variables inside class B, even though A itself did not define them.

on is a promise that guarantees: "Don't worry, whoever uses me (mixin A) will definitely have B's functions/variables available for me to use."
*/
class A {
  String name = 'A';
  int age = 18;
}

mixin B on A {
  int tmp = 0;
  void getName() {
    print(name); // can use variables from on class
  }
}

// class C with B{ } -> error
class C extends A with B {
  // no error
  void takeAge() {
    print(age); // that works
    print(tmp);
  }
}

