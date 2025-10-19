void main() {
  /*Data type :  normal data types and dynamic
    var/final/const  variableName = value
    The difference from var and dynamic : 
          var : Let compiler deduce your data type when compiling and lock it
          dynamic : No need to check data type when compiling , only check when running
        This difference make var variables can use methods of that data type while dynamic can't
        After initializing a var variable we won't able to change the data type of it while dynamic can
        Prefer using var instead of dynamic
      -Var , final , const are same at this point , they can declare with variables without datatypes
    The difference from final and const:
        final : are initialized at runtime and can only be assigned a value once. The variable reference is final, but the internal state of its value (like items in a List) can change.
        const : are initialized at compile-time (their value must be known before the program runs). They are deeply immutable, meaning the variable and its entire internal state cannot be changed.
        final can be known as const at running time while const known as const at compiling time
   */
  var s = 'anh duc';
  dynamic s2 = 'anh duc';
  // s = 1; -> error
  // print(s2.);
  s2 = 1; //no error
  print(s2);
  print(s.length);

  final someValue2 = DateTime.now();
  // const someValue3 = DateTime.now();// error
  print(someValue2);
}
