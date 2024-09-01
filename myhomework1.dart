import 'dart:io';

void main(List<String> args) {
  /*Write a program that allows a user to add, remove, and list tasks in a to-do list. 
 Use a List<String> to store the tasks and provide a simple command-line interface for interaction.
*/

  List<String> todoList = [];
  bool conditon = true;
  while (conditon) {
    print("To Do List");
    for (int i = 0; i <= todoList.length-1; i++) {
      print("${i + 1} . task ==> ${todoList[i]}");
    }
    print("");
    print("What do you want to do?");
    print("1. Add a task");
    print("2. Remove a task");
    print("3. List tasks");
    print("4. Quit");

    int input =int.parse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        print("Please add your list");
        String task = stdin.readLineSync()!;
        todoList.add(task);
        break;
      case 2:
        print("Please give the number of task to remove");
        String removeNo = stdin.readLineSync()!;
        int taskNo = int.parse(removeNo);
        if (taskNo >= 1 && taskNo <= todoList.length-1) {
          todoList.removeAt(taskNo - 1);
          print("$taskNo number is removed");
        } else
          "You entered invalid number";
        break;
      case 3:
        print("Your To-Do List ===========");
        for (int i = 0; i <= todoList.length-1; i++) {
          print("- ${todoList[i]}");
        }
        break;
      case 4:
        print("Quiting");
        conditon = false;
        break;

      default:
        print("Invalid choice");
    }
  }
}
