void main(List<String> args) {
  List<Student> students = [
    Student("Ali"),
    Student("Mehmet"),
    Student("Veli"),
    Student("Ayşe")
  ];

  print(students); //to string methodu ile aşağıdaki formatta yazıldı.

  //students.add("Keko");  == > Bu şekil hata verir. buraya da yine constructor olarak eklemek gerekecek

  students.add(Student('Hacii'));

  print(students);

  //Eger doğrudan instenilen bir indexe aklemek istiyorsak .insert(index, data) methodu kullanılır.

  students.insert(2, Student("Duru"));
  print(students);

  students.remove(Student(
      "Duru")); //bunu silemeyecek çünkü listede olan Student("Duru") instance ı farklı
  print(students);
}

class Student {
  final String name;
  Student(this.name);

  @override
  String toString() => 'Student :$name';
}
