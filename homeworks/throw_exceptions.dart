import 'dart:math';

void main(List<String> args) {
  try {
    double num2=kareKok(-20);
  print("karekök ${(num2).toStringAsFixed(2)}"); //toStringAsFixed . dan sonra 2 digit kullan
  } catch (e) {
   print("maalesef - deger girdiniz.");
  } finally {
    print("Lütfen pozitif bir değer girin");
  }

}

double kareKok(int i) {
if (i<0) {           //ama eger kullanıcı - deger girerse bu durumda program hata verecek. Dolayısıyla
  throw FormatException("Negatif sayıların karekökü olmaz. Hacı pozitif bir sayı gir."); //- deger girildiğinde hemen hatayı throw edecek bir yapı oluşturmamız lazım.
}           //throwdan sonra artık bu hatayı yakalamak için try catch bloğunu kullanmamız lazım.Eger kendi methodun 
            //içinde yok ise bu sefer çağrıldığı yere bakacak ve orada var ise try/catch bloğu çalışacak.
return sqrt(i);
}