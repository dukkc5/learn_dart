void main() {
  final json = {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
  };
  if (json case {
    'id': int id,
    'name': String name,
    'username': String username,
  }) {
    print(id);
    print(username);
    print(name);
  } else {
    print('Incorrect json');
  }
  final human = Human('Duc', 17);
  print(human);
  final Human(:name, :age) = human;
  print(name);
  final Human(name: nameee, age: ageee) = human; // Pattern matching: extract fields into new variable names
  print(nameee); // still working -> assign name of human to nameee
  print(ageee);
}
/*
final Human(:name, :age) = human;
--------------------------------
- This is a class pattern (introduced in Dart 3).
- It matches an object of type Human and extracts its fields.
- The colon (:) before a field name means:
    "Create a local variable with the same name as the field."
- Equivalent to:
    final name = human.name;
    final age = human.age;
*/

class Human {
  final String name;
  final int age;
  Human(this.name, this.age);
}

/*
Pattern & Pattern Matching in Dart:
-----------------------------------
- A "pattern" describes how to match and destructure data.
- "Pattern matching" automatically extracts values that match the pattern.

Common uses:
  1. Destructuring records or lists or map:
     var (x, y) = (1, 2);
     var [a, b, c] = [10, 20, 30];

  2. Using with switch or if-case:
     if (point case (x: 0, y: var y)) print("On Y axis at $y");

  3. Supports positional and named records.

=> Makes code shorter, clearer, and safer than manual field access.
*/
