
void main(List<String> args) {
  //normalde constructorların return yoktur. Ancak factory kullanarak da ayrı bir constructor oluşturabiliriz
  //bu durum bize flutter da esneklik sağlayacaktır.
 Ogrenci ogrenci=Ogrenci.bolumsuz(241, false);
 Ogrenci ogrenci2=Ogrenci.erkeksiz(33,"Edebiyat");
 print(ogrenci.num);
 print(ogrenci2.num);
 print(ogrenci2.bolum);
 print(ogrenci2.erkekMi);
}

class Ogrenci {
  int num=0;
  String isim="Bos";
  String? bolum;
  bool? erkekMi;

Ogrenci (this.num, this.bolum, this.erkekMi){
print("Normal Constructor çalışt"); 
}

Ogrenci.bolumsuz(this.num, this.erkekMi) {
  print("Bolümsüz alan çalıştı"); 
}
factory Ogrenci.erkeksiz(num, bolum) {
 if (num%2!=0) {
  return Ogrenci(10, bolum, true);
 } else return Ogrenci(num, bolum, false);
}
}