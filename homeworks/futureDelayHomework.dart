

void main(List<String> args) {
String name="";

  kullaniciGetir(5).then((value){
    
    print(value);  //5 Id li eleman getiriliyor
    name=value['UserName'];
    print(name);   //Cumali
})
  .catchError((hata){print(hata);})
  .whenComplete((){print("The process is completed");
   userNameLessons(name).then((Set KursListesi) {         //2.future burada çalışıyor
    print(KursListesi);
    String firstLesson=KursListesi.first;
    lessonComments(firstLesson).then((value) => print(value));   //3.future burada çalışıyor
   });    

  });
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
   print("Yorumlar hazırlanıyor");
  return Future.delayed(Duration(seconds: 2),() {
     return "Kurs çok güzeldi";
   });
 } 

 

