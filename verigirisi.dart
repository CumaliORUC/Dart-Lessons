import 'dart:io';

void main() {
  print("Bir şeyler yazın:");
  String input = stdin.readLineSync()!; // Bu şekilde kullanmalısınız
  print("Girilen veri: $input");
}