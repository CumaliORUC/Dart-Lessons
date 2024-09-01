import 'dart:io';

void main(List<String> args) {
  /*
  Build a Simple Calculator Using Dart
   Implement a calculator that can perform basic operations
   like addition, subtraction, multiplication, and division. 
   Use functions for each operation and a switch statement to handle user input. */
  print("Hi please enter first number ");
  int number1 = int.parse(stdin.readLineSync()!);

  print("Please enter second number ");
  int number2 = int.parse(stdin.readLineSync()!);

  print("Hi please select your operations ");
  String operator = stdin.readLineSync()!;

  switch (operator) {
    case '+':
      addition(number1, number2);
      break;
    case '-':
      subtruction(number1, number2);
      break;
    case '/':
      division(number1, number2);
      break;
    case '*':
      multiplication(number1, number2);
      break;
    default:
      print("Invalid operator");
  }
}

void division(int a, int b) {
  print("Division result ${a / b}");
}

void multiplication(int a, int b) {
  print("multiply result ${a * b}");
}

void subtruction(int a, int b) {
  print("substruction result ${a - b}");
}

void addition(int a, int b) {
  print("Addition result ${a + b}");
}
