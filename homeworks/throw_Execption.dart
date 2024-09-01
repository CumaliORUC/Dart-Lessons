
void main(List<String> args) {
try {
 Students std1=Students(5);
 print(" 1. ÖĞRENİCİNİ YAŞI ${std1.age}");
 Students std2=Students(-5);
 print(" 2. ÖĞRENİCİNİ YAŞI ${std2.age}");
  
} on AgeException catch (e){
  print(e.mesaj);
}


}

class Students {
  int age=0;

 Students (int age) {
   if (age <0) {
    throw AgeException("The age can not be negativeeee!!!"); //dikkat ettiysen throw dan sonrası soluk oldu.
                                              //2 .öğrencinin yaşı negative olduğundan direk burası çalıştı.
    } else this.age=age;                      //Ama bunları tray catch içinde yazacak olursak
                                               //kendi exeception oluştrumuş oluruz.
 }
}

class AgeException implements Exception {
  String mesaj;
  AgeException (this.mesaj); 

  @override
  String toString() {
    // TODO: implement toString
    return "Hatanın to string methodu da çalıştı";
  }
}