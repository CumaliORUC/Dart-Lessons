import 'getter_Setter.dart';
import 'private.dart';

void main(List<String> args) {
  //bu class Private clasındaki private methodlara ve variablelara ulaşımın olmadığını göstermek için 
  //yapılmıştır.
  VeritabaniIslemleri db=VeritabaniIslemleri();
  bool sonuc=db.baglan();
  if (sonuc) {
    print("Başarili giriş yapıldı");}
  else 
   print("Sifre/Password hatalı"); 
  //  db._kullaniciAdi  ==> Buradakiler private olduğundan görünür değiller.
  //  db._sifre;

  Musteri m1=Musteri(123);
  Musteri m2=Musteri(-999);
  m1.musteriNoAta=200;     //Burada set methoda yeni atama yaptık.
  m2.musteriNoAta=-234;
  print(m1.yeniBilgilerYazdir);
}