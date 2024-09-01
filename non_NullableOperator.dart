/*
Eger bir nullable tipin null olmadığına emin isek, null assertion operator (!) kullanabiliriz.
böylece evet bu deger null alabilir bir özellikte ama söz veriyorum burada null olmayacak diyoruz.
Eger burada bir hata var ise bu durumda dart run-time da bir hata fırlatır.
Böylece program null hatalarına açılmış olur.
*/

void main(List<String> args) {
  int? a;
  a=null;
  print(a!+2); //burada hatta verir.Çünkü diyor ki null bir ifade ile 2 yi toplayamam.
             //Hatayı gidermek için ! koyduk.
}