void main() {
  try {
    print(10 /0);
  } catch (e) {
    print(e);
  }
  finally{
    print('No error');
  }
  print('duc');
}
/*Use try to wrap blocks of code that may throw errors,
 catch will catch errors and save them to variable e,
 finally will always execute inside try catch and it is optional */
/*
A summary of Dart's error handling structure:

1.  try {
      // The code that might fail (throw an exception) goes here.
    }

2.  on SomeExceptionType {
      // (Optional) Catches a *specific* type of exception.
      // Use this when you know what error to expect and how to handle it.
      // You can stack multiple 'on' blocks for different types.
    }

3.  on AnotherExceptionType catch (e) {
      // (Optional) Catches a specific type AND gives you the
      // error object 'e' for more details (like e.message).
    }

4.  catch (e, s) {
      // (Optional) The "catch-all" block.
      // Catches *any* exception not handled by the 'on' blocks above.
      // 'e' is the error object.
      // 's' (optional) is the StackTrace (where the error happened).
    }

5.  finally {
      // (Optional) This block *always* runs,
      // whether an exception was thrown or not.
      // Use it for cleanup (e.g., closing files, network connections).
    }
*/