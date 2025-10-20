void main() {
  // Switch extensions
  List<String> listItems = ['HI', "MAN"];
  int index = 1;
  switch (listItems) {
    case ['Hi' || 'HI', 'Man' || 'MAN'] when index == 2:
      print('okeeeee');
    default:
      print('bruhhh');
  }
  //Switch expression
  int page = 0;
  int lastPage = 0;
  final text = switch (lastPage) {
    0 when page ==lastPage => 'Click hear', // can add when
    1 => 'Click me',
    _ => 'None',
  };
  print(text);
}
/*
Switch expression in Dart (Dart 3 feature)
------------------------------------------
- A short way to assign a value based on pattern matching.
- Works like a traditional switch, but it *returns* a value.
- Each case uses '=>' instead of ':'.
- '_' acts as a default (matches any value not handled before).
- It is similiar to tenary operators but you can create many conditions .
*/

