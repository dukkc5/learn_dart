void main() {
  print(Constant.greeting);
  print(Constant.bye);
  print(Constant.giveMeSomeValue());
}

/*Static variables are used 
  when you want to access that variable
      without having to create an object.
      */
// static function is same like that.
class Constant {
  static int height = 5;
  static String greeting = "Hello cu";
  static String bye = 'Bye';
  static int giveMeSomeValue() {
    return height;
  }
  /* static function 
  if using variable in class then that
   variable also need to be static and vice versa (reverse)
  */ 
}
