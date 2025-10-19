import 'Lesson07_Classes.dart';

// this file is related to file Classes
void main() {
  Cookie cookie = Cookie(shape: 'Rectangle', size: 15.6);
  //Using setter
  //  cookie.setHeight(15);
  cookie.setHeight = 15;
  cookie.setWeight = 20;
  //Using getter
  print(cookie.height);
  print(cookie.weight);
}
