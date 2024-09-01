class Student {
 int Id=0;
 int studentScore=0;

  Student({this.Id=1,this.studentScore=1});
  @override 
  String toString() {
    return "ID: $Id Not değeri: $studentScore";
  }

}