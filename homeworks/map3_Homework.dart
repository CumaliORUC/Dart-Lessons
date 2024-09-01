void main(List<String> args) {
  //içinde il_adi ,ilçe sayisi, alan kodu, ve plaka kodu, başkent mi? mapini barındıran bir liste yap.

  List <Map<String, dynamic>> iller=<Map<String,dynamic>>[];

  //map1 
  Map <String,dynamic> il1=Map();
   il1["il adı"]="Ankara";
   il1["ilçe sayisi"]=15;
   il1["plaka kodu"]="06";
   il1["başkent mi?"]=true;
  Map <String,dynamic> il2=<String, dynamic> {};
   il2["il adı"]="İstanbul";
   il2["ilçe sayisi"]=23;
   il2["plaka kodu"]="34";
   il2["başkent mi?"]=false;
  Map <String,dynamic> il3=Map <String, dynamic>();
   il3["il adı"]="Malatya";
   il3["ilçe sayisi"]=8;
   il3["plaka kodu"]="44";
   il3["başkent mi?"]=false;

   iller.add(il1);
   iller.add(il2);
   iller.add(il3);

   iller.add({
    "il adı":"Konya",
    "ilçe sayisi":10,
    "plaka kodu":"42",
    "başkent mi?":false,
   });

   print(iller);
   print(iller[0]);
   print("==============================================================");
   for (var i = 0; i < iller.length; i++) {
     print("${i+1} .sıradaki şehirin adı ${iller[i]['il adı']}, ilçe sayisi ${iller[i]['ilçe sayisi']}, plaka kodu ${iller[i]['plaka kodu']}, başkent mi? = ${iller[i]['başkent mi?']}");
   }
  
}