void main() {
  // Set : no duplicate elements
  /*
  Is Dart 'Set' like C++ 'set'? Yes and No.

  1. THE SAME:
     Both only store UNIQUE values (no duplicates).

  2. THE DIFFERENCE (Ordering):
     - C++ 'std::set' is ORDERED (sorted, like a red-black tree).
     - Dart's 'Set' (default 'HashSet') is UNORDERED (uses hashes,
       no guaranteed order).

  Conclusion:
  Dart's 'Set' is almost identical to C++'s 'std::unordered_set'.
*/
  final tmp = Student('Duc', 10);
  Set<Student> students = {
    tmp,
    Student('Anh', 11),
    Student('Duc', 10),
    tmp
  };
  print(students);
}

class Student {
  final String name;
  final int marks;
  Student(this.name, this.marks);
  @override
  String toString() => 'Student : $name and  Mark : $marks';
}
