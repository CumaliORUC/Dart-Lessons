import 'dart:io';

void main(List<String> args) {
  /*
  Palindrome Checker
  Write a Dart program that checks if a given string is a palindrome. 
  The program should ignore case and spaces. 
  Use string manipulation methods to reverse the string and compare it with the original.
  */

  print("Please enter the sentence to check whether palendrome or not");
  String sentence = (stdin.readLineSync()!).toLowerCase();
  sentence = sentence.replaceAll(' ', '');
  palendrome(sentence);
}

void palendrome(String sentence) {
  String reversedSentence = sentence.split("").reversed.join();
  print(reversedSentence);

  List sentenceList = sentence.trim().split("");
  List reversedSentenceList = reversedSentence.trim().split("");
  print(sentenceList);
  print(reversedSentenceList);
  int count = 0;
  for (var i = 0; i < sentenceList.length; i++) {
    if (sentenceList[i] == reversedSentenceList[i]) count++;
  }
  print(count);
  print(sentenceList.length);
  if (count == (sentenceList.length))
    print("$sentence has a palendrome");
  else
    print("$sentence has not a palendrome");
}
