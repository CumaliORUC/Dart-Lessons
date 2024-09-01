void main(List<String> args) {
  int sayi1=100;
  int sayi2=0;

  try {
    int sonuc=sayi1~/sayi2;
    print("Bölme işlemi yapıldı sonuc : ${sonuc}");
  } catch (e) {
    print("${e} hatasini aldık");
  } finally {print("Ama yine de burası son kez çalıştı");} //Hata çıksa da çıkmasa da burası çalışıyor. Yani son kurtarma noktası
  
  print("Sayıların toplamı: ${sayi1+sayi2}"); //buradan sonra yine devam etti.

  //eger hataları biliyor ve spesific mesaj vermesini istiyorsak try{} bloğundan sonra direk on ....(execption) eklemiş oluruz.

   try {
     int sonuc2=50+int.parse("cumali burası hatanın kaynağı e.sorsce ile yazıldı");
     print(sonuc2);
   } on FormatException catch (e) {
     print(e.message);    //burada hatanın var olan message ni
     print(e.source);     //hatanın kaynağını yazdırabiliriz.
   }  on IntegerDivisionByZeroException {   //yada burada kendi messajımızı oluşrabiliriz.
    print("sayı sıfır bölünemez");
   }

    
}