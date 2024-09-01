void main(List<String> args) {
  List myList = ["3","4","5","+","3","2"];
  List list2=[];
  List list3=[];
   

for (int i = 0; i < myList.length; i++) {
  if (myList[i].contains("+")) {
    print('${myList[i]} is an operator.');
    list3.add(myList[i]);
  } else {
    print('${myList[i]} is an integer.');
    list2.add(myList[i]);
  }
}
 print(list2.toString());
 print(list3.toString());

 
 StringBuffer result = StringBuffer();

  list2.forEach((number) => result.write(number));

  String combinedNumberString = result.toString();
  int combinedNumber = int.parse(combinedNumberString);

print(combinedNumber);
}