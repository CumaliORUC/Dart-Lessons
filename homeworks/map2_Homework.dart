void main(List<String> args) {
  //Sehirlerden oluşan bir liste hazırla ve bu listeyi sırayla yazdır.
  List plaka_kodu=[];
  plaka_kodu.add("06");
  plaka_kodu.add("34");
  plaka_kodu.add("35");
  plaka_kodu.add("44");
  plaka_kodu.add("23");

  print(plaka_kodu);

  //Yukarıdaki liste ile Plaka kodlarını barındıran bir map oluştur.

  Map alanKodlari={
    "Ankara":312,
    "istanbul":212,
    "izmir":232,
    "Malatya":422,
    "Elazig":424
  }; 
  //Burada listeden Map'e değer atama yaptık
   print(alanKodlari);
  int i=0;
  for (var element in alanKodlari.keys) {
     alanKodlari[element]=plaka_kodu[i];
     i++;
  }  
  print(alanKodlari);
  
  print("==========================ALAN Kodlari ======================================");
  print(alanKodlari);
  Map plaka_Kodlari={"Ankara":06, "istanbul":34, "izmir":35, "Malatya":44, "Elazig":23};
//Mapleri birleştime
  Map newMAP={...alanKodlari, ...plaka_Kodlari}; 
 print("==========================New MAp Kodlari ======================================");
  print(newMAP); 
 
}