void main() {
  //Map
  // Default is dynamic
  // we can use generics to define the data types for key and value
  Map<String, int> marks = {'Duc': 10, 'Linh': 20, 'Dung': 30};
  print(marks['Duc']?.isEven);
  // Methods of map
  marks['Nguyen'] = 10; // add value , no need to use add like list
  print(marks);
  marks['Duc'] = 100; // update value for key
  print(marks);
  marks.addAll({'A': 100, 'B': 200, 'C': 300});
  print(marks);
  marks.remove('Duc');
  print(marks);
  /*
    Map.forEach((key, value) { ... })
     - Purpose: To DO an action for each pair.
     - Returns: Nothing (void).
     - Use case: Printing, saving to a database.

     Example:
     Map<String, int> scores = {'alice': 10, 'bob': 20};
     scores.forEach((key, value) {
       print('$key has $value points');
     });
     // Prints:
     // alice has 10 points
     // bob has 20 points
  */
  marks.forEach((key, value) {
    print('$key has value = $value');
  });
  // Additionally , we can use list to save map
  List<Map<String, int>> a = [
    {'Duc': 10, 'Linh': 20, 'Dung': 30},
    {'Duc': 14, 'Linh': 16, 'Dung': 27},
  ];
  var b = a.map((e) {
    e.forEach((key, value) {
      print('$key $value');
    });
  }).toList(); //need to use toList to execute the plan that named Iterable
  print(b);
}
