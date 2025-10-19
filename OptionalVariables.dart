String? s;
void main() {
  // 1, you can declare a varible = null with  ?
  int? a = null; // data type is int
  // 2, but with var , const , final , you dont need to use ? but their data type is a problem
  var b = null; // data type is dynamic
  const c = null; // dynamic
  final d = null; // dynamic
  print(a);
  print("$b $c $d");
  //String e;
  // print(e);-> error because nothing is assigned to e , need to use ?
  String? e;
  print(e);
  e = '354 hello world';
  print(e);
  e = null;
  print(e);

  //3,  can use method of a null variable ? Yes,  but need to use with ?
  print(s?.length);
  // print(s.length);  error
  /*the differences really come when we declare an optional  variable outside main ,
   if we put them outside main , they won't be able to know What type they can become in main 
   */
  // 4, we won't want user see the null of  any variables , so we need to use ?? after like bottom:
  print(s?.length ?? 0); // this will return 0 when s is null
  s = 'hello world';
  print(s?.length ?? 0); // it likes ternary operator
}
