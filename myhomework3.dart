/*
      Implement a Contact Book Application
      Create a Contact class with properties like name, phoneNumber, and email.
      Write a program to add, remove, search, and display contacts using a List<Contact>.
  */

import 'dart:io';

class Contact {
  String name;
  String phoneNumber;
  String email;

  Contact(
    this.name,
    this.phoneNumber,
    this.email,
  );
}

void main(List<String> args) {
  List<Contact> contactList = [];

  while (true) {
    print("Please make a selection");
    print("1: Add Contact");
    print("2: Remove Contact");
    print("3: Search Contact");
    print("4: Display Contact");
    print("5: Quit...");
    print("");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Please enter the name");
        String name = stdin.readLineSync()!;
        print("Please enter the Phone Number");
        String phoneNumber = stdin.readLineSync()!;
        print("Please enter the Email");
        String email = stdin.readLineSync()!;
        contactList.add(Contact(name, phoneNumber, email));
        break;

      case 2:
        print("Please enter the number to remove the Contact form the List");
        String removeName = stdin.readLineSync()!;
        print("Are you sure to remove $removeName contact? : Y/N ");
        String answer = stdin.readLineSync()!;
        if (answer.toLowerCase() == "y") {
          contactList.removeWhere((contact) => contact.name == removeName);

          print("$removeName is removed");
        } else
          print("The remove process is cancelled");
        break;
      case 3:
        print("Please enter search name");
        String searchName = (stdin.readLineSync()!).toLowerCase();
        Contact? foundContact = contactList.firstWhere(
            (element) => element.name == searchName,
            orElse: () => null!);
        if (foundContact != null) {
          print("Contact found");
          print("Contact Name= ${foundContact.name}");
          print("Contact Phone number= ${foundContact.phoneNumber}");
          print("Contact email= ${foundContact.email}");
        } else
          print("$searchName NOT be found");
        break;
      case 4:
        print("Contacts ================");
        for (Contact contact in contactList) {
          print("name : ${contact.name}");
          print("Phone Number : ${contact.phoneNumber}");
          print("Email : ${contact.email}");
          print("=====================");
        }
        break;
      case 5:
        print("Exiting...");
        return;
      default:
        print("You enter the wrong number");
    }
  }
}
