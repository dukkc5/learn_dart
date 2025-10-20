void main() {
  // the way how to capitalize the first character in a string.
  String motivation = 'this is mine';
  motivation = motivation.capitalizeFirstLetter();
  print(motivation);
  String name = 'duc duc';
  print(name.capitalizeFirstLetter());
}

extension CapitalizeFirstLetter on String {
  String capitalizeFirstLetter() {
    return this[0].toUpperCase() + this.substring(1);
  }
}
/*
Extension in Dart:
------------------
- Adds new methods or getters to existing types without modifying them.
- Syntax: extension <Name> on <Type> { ... }
- Useful for utilities, helper methods, or custom behavior.
- Does NOT affect original class or require inheritance.
*/
