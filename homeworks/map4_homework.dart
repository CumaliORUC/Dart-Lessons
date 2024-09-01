import 'dart:math';

void main(List<String> args) {
//5 elemanlı 2 ayrı liste oluşturup, Elemanlar rastgele sayılardan oluşsun. (50 ye kadar). 
//Sonra bu elemanları tek bir listeye aktar. oluşan listenin karelerini tutan bir set yapısı oluştur.
  List<int> list1=List.filled(5,0);
  for (var i = 0; i < list1.length; i++) {
    list1[i]=Random().nextInt(50);
  }
 List<int> list2=List.filled(5,0);
  for (var i = 0; i < list2.length; i++) {
    list2[i]=Random().nextInt(50);
  }
  List mylist=[];
  //mylist.addAll(list1);
  //mylist.addAll(list2);
    //yada spred methodunu kullanarak da yapabiliriz.
  mylist=[...list1, ...list2];

  Set <int> square=Set();
  for (int element in mylist) {
    square.add(element*element);
  } 
  print("============================== ");
  print(square);
}