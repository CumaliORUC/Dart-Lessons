void main(List<String> args) {
  
  cevreyiHesapla(14, 35);
  print('Alanınız hesaplandı ${alanHesapla(7,10)}');
  int cikarmaSonuc=cikarma(34, 20);
  print("çıkarma sonucu $cikarmaSonuc dir.");
  print("maximum sayı ${(maxNumber(33, 40))}");

  int hacimSonuc=hacimhesapla(en:4, boy:5, h:6);
  print(hacimSonuc);

}

//void varsa herhangi bir şey göndermez sadece programı çalıştırır.
void cevreyiHesapla(int kisaKenar, int uzunKenar){
int sonuc=0;
sonuc=2*(kisaKenar+uzunKenar);
print("cevre $sonuc");
}

//hangi tip variable gönderiyorsak, onu method başında belirtmemiz yeterli.
int alanHesapla(int sayi1, int sayi2) {
  return sayi1*sayi2;
}

//eger kısa gösterimi FAT ARROW ile yapacak olursak işlem oldukça basit
//hepsini tek satır da yazıyoruz. Return demeyeğe gerek kalmadan direk buraya koyabiliriz.

int cikarma(int num1, int num2) => (num1-num2);

int maxNumber(int num1, int num2) => num1>num2? num1 : num2;

//parametreli named functions

int hacimhesapla({int en=1, int boy=1, int h=1}){
  return en * boy * h;
}