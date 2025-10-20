void main() {
  // Create a stream that emits numbers from 1 to 5, every second.
  Stream<int> numberStream = Stream.periodic(
    Duration(seconds: 1),
    (count) => count + 1, // emit count+1 each second
  ).take(5); // limit to 5 values

  // Listen to the stream (subscribe to it)
  numberStream.listen((value) {
    print("Received: $value");
  });
}
/*
──────────────────────────────────────────────
          🌟 Future vs Stream in Dart 🌟
──────────────────────────────────────────────

1️⃣  Definition
----------------
- Future:
  → Represents a single value that will be available in the future.
  → Used for one-time asynchronous operations.
  → Example: fetching data from an API, reading a file once.

- Stream:
  → Represents a sequence (flow) of asynchronous data events over time.
  → Used when multiple values are emitted asynchronously.
  → Example: receiving live chat messages, sensor data, or time ticks.


2️⃣  Number of Results
----------------------
- Future: emits only ONE value (or an error).
- Stream: can emit MANY values over time.


3️⃣  Execution Behavior
-----------------------
- Future: completes once and then closes automatically.
- Stream: keeps listening and can emit new values until it is closed.


4️⃣  Usage Syntax
-----------------
- Future:
    Future<int> getNumber() async {
      await Future.delayed(Duration(seconds: 1));
      return 42;
    }

- Stream:
    Stream<int> getNumbers() async* {
      for (int i = 1; i <= 3; i++) {
        await Future.delayed(Duration(seconds: 1));
        yield i; // emit value to the stream
      }
    }


5️⃣  Listening to Results
-------------------------
- Future:
    getNumber().then((value) => print(value));

- Stream:
    getNumbers().listen((value) => print(value));


6️⃣  Using async / await
------------------------
- Future:
    int result = await getNumber();

- Stream:
    await for (int value in getNumbers()) {
      print(value);
    }


7️⃣  Common Use Cases
---------------------
- Use Future when:
    → You need a single result later.
    → The operation happens once (e.g., API call).

- Use Stream when:
    → You need continuous or multiple results over time.
    → The operation produces events repeatedly (e.g., real-time updates).


8️⃣  Summary
-------------
| Feature           | Future                | Stream                     |
|-------------------|-----------------------|-----------------------------|
| Number of results | One                   | Many                        |
| Closes after      | First result          | When closed manually/auto   |
| Common use case   | One-time async task   | Continuous async events     |
| Await syntax      | await future          | await for ... in stream     |

──────────────────────────────────────────────
*/

