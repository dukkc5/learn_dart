void main() {
  // it likes same other languages
  // 1,for loop
  for (int i = 0; i < 5; i++) {
    print(i);
  }
  String s = 'Hello';
  for (int i = 0; i < s.length; i++) {
    print(s[i]);
  }
  //2, while loop
  int t = 5;
  while (t > 0) {
    // if conditions in while still true , it will still run
    t--;
    print(t);
  }
  //3 , do while loop
  int i = 0;
  // this loop will do before cheking the condition in the loop
  // that is the reason why this loop will do the first time  thing even if the condition is being false
  do {
    print(i);
    i++;
  } while (i > 12);
  // break and continue , it is like in others 
}
