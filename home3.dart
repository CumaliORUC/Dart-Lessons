import 'dart:io';

class Contact {
  String name;
  String phoneNumber;
  String email;

  Contact(this.name, this.phoneNumber, this.email);
}

void main() {
  List<Contact> contactList = [];

  while (true) {
    print("1. Add Contact");
    print("2. Remove Contact");
    print("3. Search Contact");
    print("4. Display Contacts");
    print("5. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter name:");
        String name = stdin.readLineSync()!;
        print("Enter phone number:");
        String phoneNumber = stdin.readLineSync()!;
        print("Enter email:");
        String email = stdin.readLineSync()!;
        contactList.add(Contact(name, phoneNumber, email));
        print("Contact added successfully.");
        break;
      case 2:
        print("Enter name to remove:");
        String nameToRemove = stdin.readLineSync()!;
        contactList.removeWhere((contact) => contact.name == nameToRemove);
        print("Contact removed successfully.");
        break;
      case 3:
        print("Enter name to search:");
        String nameToSearch = stdin.readLineSync()!;
        Contact? foundContact = contactList.firstWhere((contact) => contact.name == nameToSearch);
        if (foundContact != null) {
          print("Contact found:");
          print("Name: ${foundContact.name}");
          print("Phone Number: ${foundContact.phoneNumber}");
          print("Email: ${foundContact.email}");
        } else {
          print("Contact not found.");
        }
        break;
      case 4:
        print("Contacts:");
        for (Contact contact in contactList) {
          print("Name: ${contact.name}");
          print("Phone Number: ${contact.phoneNumber}");
          print("Email: ${contact.email}");
          print("------------------");
        }
        break;
      case 5:
        print("Exiting...");
        return;
      default:
        print("Invalid choice. Please try again.");
    }
  }
}