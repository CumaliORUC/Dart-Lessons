/*
Abstract soyut class: Classlar arasında soyutlama yapmak için kullanılır.
Abstract classlardan instance üretilmez. Abstract classlarda normal ve abstract methodlar olur.
Abstract methodlar altclasslarca override edilmek zorundadır.
eger bir class içerisinde bir tane abstract method var ise o class mutlaka abstract tanımlanmalıdır.
boylece ortak özelliği olan classları bir çatı altında toplayıp istediğimiz kullanabiliriz
List <Sekil>= tumSekiller=[]; gibi
*/

void main(List<String> args) {
 Kare s1=Kare(3);
 print(s1.alanHesapla());
 print(s1.cevreHesapla());
 s1.selamla();

 Rectangle r1=Rectangle(5, 3);
 print(r1.alanHesapla());
 print(r1.cevreHesapla());

 }


abstract class Sekil{
 double alanHesapla();
 double cevreHesapla();

 void selamla(){
  print("Hello I am in the Sekil class");
 }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar*kenar.toDouble();
  }

  @override
  double cevreHesapla() {
   return 4*kenar.toDouble();
  }

  void selamla() {
    print("Hello I am in Kare class");
  }
}

class Rectangle extends Sekil {
  int kisaKenar;
  int uzunKenar;

  Rectangle(this.kisaKenar,this.uzunKenar);
  @override
  double alanHesapla() {
    return uzunKenar*kisaKenar.toDouble();
  }

  @override
  double cevreHesapla() {
   return 2*(kisaKenar+uzunKenar).toDouble();
  }
}
