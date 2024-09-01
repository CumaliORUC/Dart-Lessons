void main(List<String> args) async{
   Map<String,dynamic> gelenUser= await kullaniciGetir(5);
   Set<String> kursListesi=await userNameLessons(gelenUser['UserName']);
   print(kursListesi);
   String yorum= await lessonComments(kursListesi.first);
   print(yorum);
  
}
Future<Set<String>> userNameLessons(String userName) {
   print({"$userName kullanıcısının kursları getiriliyor."});
   return Future<Set<String>>.delayed(Duration(seconds: 4),(){
    return  {"flutter", "dart", "Java","Pyhton"};
   });
}

Future<Map<String,dynamic>> kullaniciGetir(int Id) {
  print("$Id Id li eleman getiriliyor");
  return Future<Map<String,dynamic>>.delayed(Duration(seconds: 5),(){
    return {'UserName': 'Cumali', 'id':Id};    //Burada Map yapısı var. O yüzden return type Map olur
  });
}
 
 Future<String> lessonComments (String kursAdi) {
   print("$kursAdi için yorumlar hazırlanıyor");
  return Future.delayed(Duration(seconds: 2),() {
     return "Kurs çok güzeldi";
   });
 } 