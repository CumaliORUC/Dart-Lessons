/*
Bazen değişkenler veya propertyler non-nullable olmalıdır ama 
ilk değer ataması hemen gerçekleşmeyecektir. Bu durumlarda late kelimesi kullanılır.
bir degişkenin önüne late yazarak bu non-nullable değişkene "Sen bunu okumadan önce ben buna bir değer atamış olacağım sözünü vermiş oluyoruz.
*/

class Yemek {
  late final String tanim;
  late final int fiyat;

  Yemek (int fiyat) {
    this.fiyat=fiyat;     //normalde late yazmış olamazsak burada bize hata veriyor.
  }
}