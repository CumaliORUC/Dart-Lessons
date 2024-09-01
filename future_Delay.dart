import 'dart:io';

void main(List<String> args) {
  //Flutter Single threat bir dildir. Yani herşeyi sırayla yapar.
  //Eger bir yerde gecikme kullanacak isek bu durumda sleep methodunu kullnaırız. direk programı durdurur.
  //Ama programın akışını bozayacak şekilde işşler bittikçe cevabı getiren özellikler de vardır. 
  //Yani bir işi yaparken eger çok uzun sürecek ise beklemeden diğerine devam eder ve 
  //bittiğinde cevabı getirir.
 print("lets thinks what should we prepare for breakfeast");
 sleep(Duration(seconds: 5));
 print("Ok, I found it lets preapare an omlet");
 print("There is no sugar and tea go to shopping");
 shopping();
 print("I prepared the table");
 print("every thing is reafy I am waiting you where have you been");
}

void shopping(){
  print("I went to groccerystore");
  Future.delayed(Duration(seconds: 10), () {
     print("I bought the sugar and tea");
     print("I have come back");
  });
  

}