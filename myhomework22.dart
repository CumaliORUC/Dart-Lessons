import 'dart:io';

void main(List<String> args) {
  /*
  Build a Simple Calculator Using Dart
   Implement a calculator that can perform basic operations
   like addition, subtraction, multiplication, and division. 
   Use functions for each operation and a switch statement to handle user input. */
  print("Hi please enter an expiration eg 5+6 ");
  String task = stdin.readLineSync()!;
  int operatorIndex = 0;

  List<String> num1List = [];
  List<String> num2List = [];

  List<String> myList = task.split("");
 
  
  // dividing the stiring to numn1-operator-num2
  for (int i = 0; i < myList.length; i++) {
    if (myList[i].contains('+') ||
        myList[i].contains('-') ||
        myList[i].contains('*') ||
        myList[i].contains('/')) {
      print(myList[i]);
      operatorIndex = i;
    }
  }
  for (int i = 0; i < operatorIndex; i++) {
    num1List.add(myList[i]);
  }
  for (int i = operatorIndex + 1; i < myList.length; i++) {
    num2List.add(myList[i]);
  }


  StringBuffer result = StringBuffer(); //swtiching String to int
  StringBuffer result2 = StringBuffer();

  num2List.forEach((number) => result2.write(number));

  String combinedNumberString2 = result2.toString();
  int num2 = int.parse(combinedNumberString2);

  num1List.forEach((number) => result.write(number));

  String combinedNumberString1 = result.toString();
  int num1 = int.parse(combinedNumberString1);
  print("==============");
  print(num1);
  print(num2);

  switch (myList[operatorIndex]) {
    case '+':
      addition(num1, num2);
      break;
    case '-':
      subtruction(num1, num2);
      break;
    case '/':
      division(num1, num2);
      break;
    case '*':
      multiplication(num1, num2);
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
