void main(List<String> args) {
  //Liste gibidir. VE İÇİNE SADECE VE SADECE UNİQE değerler alırlar. 
  // Yani aynı değer birden fazla kez iinde bulunmaz.
  //ve index yoktur. Yani element çağırırken indexi kullanamazsın.

  Set <int> newSet=Set();
  newSet.add(12);
  newSet.add(13);
  newSet.add(14);
  newSet.add(12);
  newSet.add(12);
  print(newSet);
  
  for (int element in newSet) {
    print("Bu set te bulunan değer ==>  $element");
  }

  print(newSet.remove(12));
  print(newSet.remove(12));  //bir öncekinde sildiği için şuan artık olmadığı için false verir.

  List myList=[3,4,54,54,54,54,53,54,5,6,5,6,4,22,4,667,67];
  Set mySet=Set();
  mySet.add(34);
  mySet.add(3);
  mySet.add(4);
  mySet.add(45);
  mySet.add(34);
  //2. YÖNTEM SET DOĞRUDAN OLUŞTURMA Set.from methodu ile oluşturulur.
  Set mySet2=Set.from([3,4,43,3,4,43,4,34,3,43,4,53,4]);
  print(mySet2);

  print("My lis=================");
  print(myList);

  print("My SET=====================");
  print(mySet);

  mySet.addAll(myList);

    print("====================My NEW SET       WİTH LİST   =====================");
  print(mySet);
}