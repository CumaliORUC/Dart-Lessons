void main(List<String> args) {
  //Büyüğen listeler 3 şekilde oluşturulur. ve içine eleman atarkende add() methodunu kullanırız.
  //1- Aşağıdaki gibi 
  List <int> newList=[]; 
   newList.add(34);
   newList.add(35);
   newList.add(36);
   print("New Lİst===========");
   for (int element in newList) {
     print(element);
   }
     //2- Yine aynı şekilde bir [] oluşturur içine elementleri direk koyabiliriz.add methodu ile yeni eleman koyduğumuzda
     //direk en arkaya atayacaktır.
   List <int> list2=[2,4,7,8,];  
  list2.add(56);
  list2.add(58);
  list2.add(66);
    print("===========Lİst 2 ===========");
   for (int element in list2) {
     print(element);
   }

  //3- List <int> list3=List.empty(growable:true); dediğimizde ise büyüğen bir boş liste oluşturmş olacağız. 
  //normalde growable:false dediğimizde bize sabit array oluşturur.
   List <String> list3=List.empty(growable:true); 
    list3.add("Ayşe");
    list3.add("Fatma");
    list3.add("Hayriye");
    print("===========Lİst 3       List 3   ===========");
   for (String element in list3) {
     print(element);
   }
}