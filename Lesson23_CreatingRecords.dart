void main() {
  /*
Record in Dart:
---------------
- A lightweight way to group multiple values without creating a class.
- Access unnamed fields with $1, $2, etc.
- Named fields can be accessed directly (e.g., record.name).
- Useful for returning multiple values from a function.
Example:
  var user = (id: 1, name: 'Alice');
  print(user.id); // 1
*/

  final records = (4.5, 'Hi', greeting: 'hello', true, 2);
  print(records);
  print(
    records.greeting,
  ); // It is similiar to Required record at data type of fucntion in lesson 06
  (double, int)? name = (4.5, 3);
  print(name);
  name = null;
  print(name);
  ({int x, int y, int z}) point = (x: 1, y: 2, z: 3);
  ({int a, int y, int b}) color = (a: 1, y: 2, b: 3);
  print(point == color); // not equal
  /*
Named record in Dart:
---------------------
- ({int x, int y, int z}) defines a record type with named fields.
- (x: 1, y: 2, z: 3) creates a record value.
- Access fields directly by name (e.g., point.x).
- Requires Dart 3 or higher.
*/
}
/*
In summary, Records are real values, We can store them in variables, 
pass them to and from functions and store them in lists
*/
