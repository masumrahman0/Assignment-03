// OBJECTIVES
// 1. ON Clause
// 2. Catch Clause with Exception Object
// 3. Catch Clause with Exception Object and StackTrac Object
// 4. Finally Clause
// 5. Create our own Custom Exception

void main() {
  print("CASE 1");
  // CASE 1: When you know the exception to be thrown, ON Clause
  try {
    int result = 12 ~/ 0;
    print("This is result $result");
  } on IntegerDivisionByZeroException {
    print("cannot divide by zero");
  }

  print("CASE 2");
  // CASE 2: When you do not know the exception use CATCH Clause
  try {
    int result = 12 ~/ 0;
    print("This is result $result");
  } catch (e) {
    print("The exception thrown is $e");
  }

  print("CASE 3");
  // CASE 3: Using STACK TRACE to know the events occurred before Exception eas thrown
  try {
    int result = 12 ~/ 0;
    print("This is result $result");
  } catch (e, s) {
    print("The exception thrown is $e");
    print("STACK TRACE \n $s");
  }

  print("CASE 4");
  // CASE 4: Whether there is an Exception or not, FINALLY Clause is always Executed
  try {
    int result = 12 ~/ 3;
    print("This is result $result");
  } catch (e) {
    print("The exception thrown is $e");
  } finally {
    print("This is FINALLY Clause and is always executed.");
  }
}
