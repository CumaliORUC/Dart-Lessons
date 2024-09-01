/*Write a program that allows a user to add, remove, and list tasks in a to-do list. 
 Use a List<String> to store the tasks and provide a simple command-line interface for interaction.
*/

import 'dart:io';

void main() {
  List<String> tasks = [];
  bool running = true;

  while (running) {
    print("To-Do List:");
    for (int i = 0; i < tasks.length; i++) {
      print("${i + 1}. ${tasks[i]}");
    }

    print("What do you want to do?");
    print("1. Add a task");
    print("2. Remove a task");
    print("3. List tasks");
    print("4. Quit");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter a task:");
        String task = stdin.readLineSync()!;
        tasks.add(task);
        break;
      case 2:
        print("Enter the task number to remove:");
        int index = int.parse(stdin.readLineSync()!);
        if (index >= 1 && index <= tasks.length) {
          tasks.removeAt(index - 1);
          print("Task removed.");
        } else {
          print("Invalid task number.");
        }
        break;
      case 3:
        print("Your tasks:");
        for (String task in tasks) {
          print("- $task");
        }
        break;
      case 4:
        print("Quitting...");
        running = false;
        break;
      default:
        print("Invalid choice.");
    }
  }
}