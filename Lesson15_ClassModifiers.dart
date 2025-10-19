void main() {
  Animal animal = Cat();
  switch (animal) {  
    case Dog(): 
      print("dog");
    case Cat():
      print("cat");
    case Human():
      print('human');
  }
}
sealed class Animal {} // create a subtype limit for switch case , only allow to extends and implements inside file

class Human implements Animal {}

class Dog implements Animal {}

class Cat extends Animal {}
final class Animal1{} // prevent every class outside file extends and implements
base class Animal2{} // prevent every class implements , obligate to use extends
interface class Animal3{}// prevent every class extends , obligate to use implements
mixin class Animal4{} // helps to combine everything in mixin into sub class , lesson14
/*
  What is a 'sealed class'?

  In short: It's an 'abstract class' that forces all its children
  (subclasses) to be in the SAME file.

  1. It's 'abstract' (you can't create an object from it).
  2. Its 'subclasses' (child classes) MUST be in the same file.

  Why? The main benefit is "exhaustive checking."

  When you use a 'switch' statement on a sealed class,
  the compiler KNOWS all possible types.

  If you forget to handle one of the subclasses (e.g., you
  forget a 'case' for the 'Error' state), the compiler
  will give you an ERROR.

  This makes your code super safe, especially for State Management
  (like Loading, Success, Error).
*/
/*
  The Real-World Error Without 'sealed class':

  1. You define your states using a normal 'abstract class'.
     (e.g., Loading, Success, Error).

  2. You write a 'switch' statement in your UI to handle
     all 3 states. Everything works.

  3. Later, you add a NEW state (e.g., 'Initial') to
     the state file.

  4. THE PROBLEM:
     You forget to go back and update your 'switch' statement
     to handle the new 'Initial' state.

  5. THE CRASH:
     - The compiler DOES NOT warn you (no compile-time error).
     - The app runs, hits the 'Initial' state.
     - The 'switch' statement doesn't find a match.
     - The 'build' method fails to return a widget.
     - 💥 Your app crashes at runtime.

  'sealed class' solves this by giving you a COMPILE-TIME
  error, forcing you to handle the new state before you
  can even run the app.
*/