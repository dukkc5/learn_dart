void main() {
  /*
An 'enum' (enumeration) is used to define a fixed set of constant values.

Use it when you have a variable that should only hold one of a few predefined options.
For example, representing states, types, or specific choices.

Example:
enum Status { loading, success, error }

void checkStatus(Status currentStatus) {
  if (currentStatus == Status.loading) {
    print("Data is loading...");
  }
}
or Example below: 
*/
  final employee1 = Employee('Duc', EmployeeType.ft);
  final employee2 = Employee('Linh', EmployeeType.mktin);
  final employee3 = Employee('Duc', EmployeeType.saler);
  employee1.fn();
  employee2.fn();
  employee3.fn();
}

enum EmployeeType {
  swe(2000),
  ft(1000),
  mktin(3000),
  saler(4000);

  final int salary;
  const EmployeeType(this.salary);
}

class Employee {
  final String name;
  final EmployeeType type;
  Employee(this.name, this.type);
  void fn() {
    print('${type.name} ${type.salary}');
  }
}
/*
This example demonstrates 'enhanced enums' in Dart.

1.  The `EmployeeType` enum defines a fixed set of job types (swe, ft, etc.).
2.  It's "enhanced" because it contains data:
    - A `final int salary` field is declared.
    - A `const` constructor `EmployeeType(this.salary)` is used to
      initialize the salary for each enum value.
3.  The `Employee` class holds a `name` and an instance of the `EmployeeType` enum.
4.  The `fn()` method within the `Employee` class accesses the `salary`
    property directly from its `type` (the enum instance).
5.  The main part of the code creates different Employee instances, each
    with a specific `EmployeeType`, and then calls `fn()` to print the
    salary associated with that type.
*/

// --- The code you provided ---
/*
void main() { // Assuming this is wrapped in a main function
  final employee1 = Employee('Duc', EmployeeType.ft);
  final employee2 = Employee('Linh', EmployeeType.mktin);
  final employee3 = Employee('Duc', EmployeeType.saler);
  employee1.fn(); // Prints 1000
  employee2.fn(); // Prints 3000
  employee3.fn(); // Prints 4000
}
*/
