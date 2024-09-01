//bir fonksiyonu parametre olarak alan ve geriye fonksiyon döndüren fonksiyonlardır
void main(List<String> args) {

  List<int> mylist=[2,3,4,5,7];
 // mylist.forEach(callback); //burada callback fonksiyonunu çağırdık.

    mylist.forEach((element) {      //burada içinde element alan iç içe bir fonksiyon var.
  //  print("Element $element in indexi ${mylist.indexOf(element)}");
    });


  kendiforEachMethod(mylist,(int deger, int index){print("Değer $deger ve $index");});
}
 void kendiforEachMethod(List<int>list, Function function) {
  for (int i = 0; i < list.length; i++) {
    //print("Yeni ForEach Yapısına Göre ${list[i]}");
    callback(list[i], i);
  }
 }

 void callback(int element, int i){
    print("Element $element ün indexi ${element}");
  }
