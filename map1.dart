void main(List<String> args) {
 Map <int,String> myMap1={
  266:"Antalya",
  420:"Diyarbakır",
  216:"İst-EU",
  264:"Eskişehir"
 };
print("================ MAP 1 ========================");
print(myMap1);

  //2.yöntem value eklmek
  Map <int,String> myMap={};
  Map <int,String> myMap2=Map();
  print(myMap2);
  
  myMap[312]="Ankara";
  myMap[422]="Malatya";
 
 print("================ MAP ========================");
 print(myMap);

 myMap.addAll(myMap1);
 print("================ MAP içine yeni eleman eklendi ========================");
 print(myMap);
 print("================ FOR LOOP  ========================");
for (int element in myMap.keys) {
  print(element);
  print(myMap[element]);
  
}
 print("================ FOR LOOP 2 ========================");
for (var element in myMap.entries) {
  print("Key değeri = ${element.key} olan elementin value değeri ${element.value}");
}
}