void main(List<String> args) {
  print("Anne çocuğu ekmek almaya gönderir.");
  print("Çocuk ekmek almak için evden çıkar.");
  Future<String> sonuc=bakkalaGidis();
  //print(sonuc);  ==> Instance of 'Future<String>'
  //sonuc.then((String value) => value);   //bekmesini istiyorsak; yani işlem tamamlandığında
  
  sonuc.then((String value) => print(value))
  .catchError((hata){         //eger işlem başarısız olursa da o ihtimali de düşünmeliyiz
    print(hata);
  })
  .whenComplete(() => print("Ekmek alma işlemi bitti"));   //fianlly bloğu gibi bize işlemin bittiğini anlatıyor.
  print("Anne masayı hazırlar");
  print("Anne çayı  koyar");

}

 Future<String> bakkalaGidis() {
  Future<String> sonuc=Future.delayed(Duration(seconds: 5),() {
    //  return "Çocuk eve gelir";
    throw Exception("Bakkalda ekmek kalmamış");
  }); 
  return sonuc;
 } 