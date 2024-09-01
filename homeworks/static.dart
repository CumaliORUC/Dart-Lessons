void main(List<String> args) {
  Matematics m1=Matematics(45, 25);
  m1.sum();
  m1.minus();

  Matematics m2=Matematics(35, 23);
  m2.minus();
  m2.sum();
  
  print(Matematics.PI);
  // print(m1.islemSayisi);
  print(Matematics.islemSayisi);  //islamSayisi instance olduğunda sadece m1 object oluşturulunca çalıştı.ve 2 verdi.
                          // Oysa ki m2 objesi de çalıştı. oradaki işlem sayılarını da eklemek istyorsak 
                          //variable static yapar ve class seviyesine taşıdım ve tüm class içindeki işlem noyu verdi.
}

class Matematics{
  //instance variables
  int num1=0;
  int num2=0;
  static int islemSayisi=0;
  static double PI=3.14; //artık bu değer class variabledır. Ve class ismi ile ulaşmak kolaydır. 
                         //Instance variablelara static class içerisinden ulaşamazsın.Ama tersi geçerli değil
  Matematics (this.num1, this.num2);
  void sum(){
   islemSayisi++;
   print("Sayıların toplamı : ${num1+num2}");
   
  }
    void minus(){
  islemSayisi++;
   print("Sayıların çıkarılması : ${num1-num2}");
  }

}