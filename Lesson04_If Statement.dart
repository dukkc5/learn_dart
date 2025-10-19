void main() {
  // it is really same like 'if statement' in other programming languages
  int age = 13;
  bool isAllowed = false;
  if (age >= 18 && !isAllowed) {
    print('adult');
  } else if (age >= 21) {
    print('me');
  } else {
    print('Child');
  }
  // when if statement only compare 2 conditions we can use tenary operator
  String someValue = 'Hi';
  String value = someValue.startsWith('Haaaaa') ? 'wow' : "woo";
  print(value);
  // 1 way to check condition , we can use switch case
  int man = 20;
  switch (someValue) {
    case 'Hiiiii'
        when man > 19: // compare is value in switch equal to value in case
      print('hello!');
    case 'Hihihi':
    case 'Hahaha':
      print("yeps");
    default: // like else
      print('nothing');
  }
}
