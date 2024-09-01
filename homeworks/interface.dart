//Normalde dart dilinde inteface yoktur. Ancak implements anahtar kelimesi ile 
//diğer classlara interfacemiş gibi kullanabiliriz.
//amaç kalıtımsal olmayan diğer classlara ait method ve variablelarını bir çatı altında toplamak
//birbiri içerisinde kullanmak. Abstract gibi interface yapılanclassın methodları
// implement edilen classların içerisinde de bulunulmalıdır.
//interface sayesinde çoklu kalıtım sağlanabilir.
//Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir.
//Normalde exteds enfazla bir classa yapabiliyorken IMPLEMENTS birden fazla classa yapılabilir.

void main(List<String> args) {
  
}

abstract class Hayvan{
void breath() {
  print("Hayvanları koru");
}
}

abstract class Kosabilenler{
  void run();
}

abstract class Ucabilenler{
  void fly();
}

abstract class Havlayabilenler{
  void bark();
}

class Kopek extends Hayvan implements Kosabilenler, Havlayabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }   //mesela burda Köpek hem koşabilenler hem de havlayabilenlere extends olamaz.A
                                                          //ama implements ile bunu yapabiliriz.

}   

 class Kus extends Hayvan implements Ucabilenler {
 
  @override
  void fly() {
    // TODO: implement fly
  }

 }