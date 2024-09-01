void main(List<String> args) {
  List<Student> students = [
    Student("Ali", 45),
    Student("Mehmet", 60),
    Student("Veli", 70),
    Student("Ayşe", 45)
  ];

  print(students); //to string methodu ile aşağıdaki formatta yazıldı.

  students.add(Student('Hacii', 56));

  print(students);

  students.insert(2, Student("Duru", 50));
  print(students);

  //notları 40 yüksek olanları yazdıralım.
  //Öncelikle boş bit list oluştur.
  //büyük olanları o listeye at.
  List<Student> markList = [];

  for (var i = 0; i < students.length; i++) {
    if (students[i].age >= 50) {
      markList.add(students[i]);
    }
  }
  print(markList);

  //ya da where methodu ile de yapabiliriz.

  List secondList = students.where((element) => element.age >= 60).toList();
  print(students);
  print("=============================");
  print(secondList);
}

class Student {
  final String name;
  final int age;
  Student(this.name, this.age);

  @override
  String toString() => 'Student :$name Mark : $age';
}
