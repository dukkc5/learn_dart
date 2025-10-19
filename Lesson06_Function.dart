void main() {
  printName();
  var a = printAge();
  print(a);
  var b = getInfo();
  print("${b.$1} ${b.$2} ${b.$3}"); //we can take value from record like that
  var (e, f, g) = getInfo(); // or we can use a tuple to save value like that
  print("$e $f $g");
  printInfo(1, true, name: "Duc", age: 12, greeting: "hello");

  final info = getInfo2();
  print(info.age);
  print(info.gpa);
  print(info.name);
  // you can see that : instead of .$ we have .age or .gpa and this is easy for taking values from record

  var t = getFunction(); // assign a variable = a function that return function
  t(); // so we need to use that variable like a function
  //10,Anonymous function , a function that doesn't have datatype , name , just have arguments and body
  () {
    print("Hello");
  }(); // this funtion only executes once time
  (); // this won't execute
  print("duc");
  // or you can assign a anonymous function to a variable , and you can use them anytime
  var tmp = () {
    return "duc";
  };
  print(tmp());
}

// 1, void , not return anything , can use return but that just uses for stop function
void printName() {
  print("anh duc");
}

//2, <data_type> nameFunction(data type Arguments){}
String printAge() {
  return "21";
}

// 3, can use a tuple to declare a list of data to return a record
(int, String, double) getInfo() {
  return (18, "anh duc", 8.5);
}

// 4, we can make a record turn to required record by adding {} :
({int age, String name, double gpa}) getInfo2() {
  return (age: 18, name: "Duc", gpa: 8.5);
}

// 5, Similar to declaring optional variables , we can use datatype? to declare can be null function
// if use ? need to return null or anything , can't be empty
String? getName() {
  //return; error
  return null;
}
// 6,GLobal variables
//It is related to the scope of the variable.
//When you declare a variable outside a function and change it inside the function, the variable does not change.

//7, Required Argument
// we can use positional arguments and required arguments in a function but we need to write positional args before required args
void printInfo(
  int a,
  bool b, {
  required String name,
  required int age,
  required String greeting,
}) {
  print(name);
  print(age);
  print(greeting);
}

//8 , we can return an anonymous function with function
Function getFunction() {
  return () {
    // this is an anonymous function
    print("yo yo yo");
  };
}

//9, Arrow function
void printStuff() => print("My name is Duc");
String getJob() => "student"; // => equal to return 
