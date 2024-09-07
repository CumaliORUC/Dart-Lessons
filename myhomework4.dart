import 'dart:io';

void main(List<String> args) {
  /*
  Create a Dart Program to Convert Temperatures
  Write a Dart program that converts temperatures between Celsius, 
  Fahrenheit, and Kelvin. 
  Create functions for each conversion and allow the user to input the value and desired conversion.
  */

  print("Hi! Welcome to the temperature converter program :)");
  print("Please enter the temperature: ");
  double temp = double.parse(stdin.readLineSync()!);

  print("Please enter the temperature type : ");
  print("Celsius => C ");
  print("Fahrenheit => F");
  print("Kelvin => K");

  String fistTempType = stdin.readLineSync()!;
  print(" which type do you want $temp $fistTempType to convert: ");
  print("Celsius => C ");
  print("Fahrenheit => F");
  print("Kelvin => K");

  String convertType = stdin.readLineSync()!;

  if (fistTempType.toLowerCase() == "c" && convertType.toLowerCase() == "f") {
    celsiustoFahrenheit(temp);
  } else if (fistTempType.toLowerCase() == "f" &&
      convertType.toLowerCase() == "c") {
    fahrenheittoCelsius(temp);
  } else if (fistTempType.toLowerCase() == "c" &&
      convertType.toLowerCase() == "k") {
    celsiustoKelvin(temp);
  } else if (fistTempType.toLowerCase() == "k" &&
      convertType.toLowerCase() == "c") {
    kelvintoCelsius(temp);
  } else if (fistTempType.toLowerCase() == "f" &&
      convertType.toLowerCase() == "k") {
    fahrenheittoKelvin(temp);
  } else if (fistTempType.toLowerCase() == "k" &&
      convertType.toLowerCase() == "f") {
    kelvintoFahreniheit(temp);
  } else print("Please enter valid input");
}

void celsiustoFahrenheit(double temp) {
  double result = ((9 / 5) * temp) + 32;
  print("$temp Celcius equals to $result Fahrenheit");
}

void fahrenheittoCelsius(double temp) {
  double result = ((5 / 9) * (temp - 32));
  print("$temp Fahrenheit equals to $result Celcios");
}

void celsiustoKelvin(double temp) {
  double result = temp + 273;
  print("$temp Celcius equals to $result Kelvin");
}

void kelvintoCelsius(double temp) {
  double result = temp - 273;
  print("$temp Kelvin equals to $result Celsius");
}

void fahrenheittoKelvin(double temp) {
  double result = 5 / 9 * (temp - 32) + 273;
  print("$temp Fahrenheit equals to $result Kelvin");
}

void kelvintoFahreniheit(double temp) {
  double result = (9 / 5) * (temp - 273) + 32;
  print("$temp Kelvin equals to $result Fahrenheit");
}
