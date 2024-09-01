import 'dart:math';
import 'student.dart';

void main(List<String> args) {
  List <Student> studentList=List.filled(10, Student());//burada list oluştruyoruz
  makeStudentList(studentList);
  print("===============================Burada to String (Student class içinde bulunan)ile yapılan format kullanılmaktadır");
  for (Student element in studentList) {
      print(element);   //to String Format
  }

  printingList(studentList);

  }
 makeStudentList(List<Student> list ) {
  for (int i = 0; i <list.length; i++) {
    list[i]=Student(Id: Random().nextInt(500), studentScore: Random().nextInt(100));
  }
 }

  printingList(List<Student> list){
    for (int i=0; i<list.length; i++) {
      print("${list[i].Id} numaralı öğrencinin notu = ${list[i].studentScore} " );
    }
  }