import 'dart:async';

void main() async {
  //Streams
  countDown1();
}

Stream<int> countDown() {
  return Stream.periodic(Duration(seconds: 1), (val) => val);
}

/*
Stream.periodic():
-----------------
- Creates a stream that emits events at fixed time intervals.
- "Periodic" means it repeats after every given Duration.
- Commonly used for timers, counters, or repeated tasks.
*/
//How can stop
void test() async {
  //Streams
  countDown().listen(
    (val) {
      print(val);
    },
    onDone: () {
      print('Hey I  complete');
    },
  );
}

void countDown1() {
  final controller = StreamController<int>();
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.addError('Hey error bro');
  controller.sink.close();
  controller.stream.listen(
    (val) {
      print(val);
    },
    onError: (err) {
      print(err);
    },
  );
}
