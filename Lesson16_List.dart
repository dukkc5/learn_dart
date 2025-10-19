// List is an odered collection of objects

void main() {
  // If use List a = [] , the data type in list a will be dynamic , and need to avoid that
  List<int> list = [10, 40, 20, 30];
  print(
    list,
  ); // if use List <datatype> , the data type in list will be consistent
  List<Student> students = [
    Student('Duc', 2),
    Student('Dung', 3),
    Student('Linh', 5),
  ];
  print(students);
  students[2] = Student('Lam', 4);
  // Methods of a list
  var tmp = Student('Nguyen', 6);
  students.add(tmp);
  students.insert(0, Student('Phe', 7));
  students.remove(students[2]);
  // List<Student> filteredList = [];
  // for (int i = 0; i < students.length; i++) {
  //   if (students[i].marks > 4) {
  //     filteredList.add(students[i]);
  //   }
  // }
  // or we can for each instead of this
  // for (final student in students) {
  //   if (student.marks > 5) {
  //     filteredList.add(student);
  //   }
  // }
  // print(filteredList);
  // we can use .where
  // To use this methods , we need to transmit : an anonymous function with structure (element) => true/false
  // This method will create a loop in your list with variable in anonymous function represents for each element in your list , and if we return true that element is kept and vice versa
  // This method return a immutable so we need to use an immutable variable to save them
  // filteredList = students.where((student) => student.marks > 5); -> error
  var filter = students.where((student) => student.marks > 5);
  print(filter);
  print(students.reversed);
  students.addAll([Student('linh', 13), Student('Huyen', 19), tmp, tmp, tmp]);
  print(students);
  // students.clear();
  print(students.contains(tmp));
  /*
Alternatively we can use firstwhere 
if we want to get the first satisfying element 
and lastwhere if we want to get the last satisfying element.
  */
  final rs1 = students.firstWhere((student) => student.marks > 10);
  final rs2 = students.lastWhere((student) => student.marks < 5);
  print('$rs1 \n$rs2');
  print(students.elementAt(2));
  // can make a list become a set(lesson 17):
  final t=students.toSet();
  print(t);
  // List.map -> so important and we will learn in lesson18
}

class Student {
  // <T > this is called generics , explained below
  final String name; // why final variable no error
  // that is a rule in dart ,whenever using final in class , dart know you must assign value to that variable so it doesn get error
  // if not using final , you can use late
  final int marks;
  Student(this.name, this.marks);
  @override // this is an inbult function in object of dart , every class in dart extends from a big class that is OBJECT
  String toString() => 'Student : $name and  Mark : $marks';
}

/*
  What are Generics?

  Generics let you write flexible, type-safe code that
  can work with different data types (like String, int, etc.).

  You use a placeholder (like `<T>`) to represent "some type"
  that will be specified later.

  Example:
  A 'List<String>' is a generic 'List' that is guaranteed
  to ONLY hold 'String' objects.
  A 'List<int>' is a 'List' that ONLY holds 'int' objects.

  Benefits:
  1. Type Safety: Catches type errors at compile-time
     (e.g., you can't add an 'int' to a 'List<String>').
  2. Code Reusability: You write one 'List<T>' class,
     not 'StringList', 'IntList', etc.
*/
