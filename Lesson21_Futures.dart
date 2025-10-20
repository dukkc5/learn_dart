void main() async {
  print("Start fetching data...");

  // The function fetchData returns a Future that will complete after 2 seconds
  String result = await fetchData();

  print(result);
  print("Done!");
}

/// This function simulates fetching data from the internet.
/// It returns a Future that will complete after 2 seconds.
/// 
/// A Future represents a value that will be available later (asynchronous).
/// The 'await' keyword is used to wait for the Future to finish.
/// 'async' allows the function to run asynchronously.
Future<String> fetchData() async {
  return await Future.delayed(
    Duration(seconds: 2),
    () {
      // 👇 This is an anonymous function (no name).
      // It acts as the "callback" that runs after 2 seconds.
      // Whatever this function returns will become the Future's result.
      return "Data fetched successfully!";
    },
  );
}
