void main(List<String> args) {
  print("İnternetten kişi verisi gertirilecek ");
  
  kisiIleIlgiliIslemler();
}
void kisiIleIlgiliIslemler() async{
String kisi=await kisiVerisiniGetir();  //basına await ve method üzerine de async ekelenir
print("Başka işlemler yapılacak acil kimseyi bekleyemem");
print("İşlem bitti");            //diğer işlemler etkilenmesin diye await  ayrı bir method içine aldık
print(kisi.length);
}

 kisiVerisiniGetir(){
  return Future<String>.delayed(Duration(seconds: 5),(){
    return "Kisi adı: Cumali ve Id:345";
  });
 }