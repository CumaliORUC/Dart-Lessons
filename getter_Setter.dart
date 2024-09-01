class Musteri {
  int? _musteriNo;
  //getter ve setter private depişkenleri okumak ya da yeni değer atamak için kullanılır. 
  //Aslında normla methodlar gibi çalışır ancak tek farkı oluşturrken get ve set kullanırız.
  // set için atama yaparken de = kullanırız.
  //get içinde direk methodu çağırırız.
  Musteri(int musNo) {
    _musteriNoKontrol(musNo);      // burada set methoduna atama yapıldı.
  }
   
  void set musteriNoAta(int no){
     if(no>0) {
      _musteriNo=no;
    } else _musteriNo=0; 
  }

  String get yeniBilgilerYazdir => "Yeni müsteri no $_musteriNo"; 
  
  void _musteriNoKontrol(int no){
    if(no>0) {
      _musteriNo=no;
    } else _musteriNo=0;
  } 

  void bilgileriYazdir() {
    print("Muateri no oluşturuldu. Musteri no: $_musteriNo dur");
  }
}
