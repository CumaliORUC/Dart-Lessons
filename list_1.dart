void main(List<String> args) {
  //iki tip list vardır.
  // Sabit Array ve büyüyen listeler (Lists)

 List<int> newList=List.filled(5, 0); //1. parametre uzunluğu 2. parametre ise default olarak atanacak değer eklenir.
 newList[0]=4;
 newList[3]=7;
 newList[4]=6;
 print(newList); // ===> [4,0,0,7,6] dır.

  List<String> list2=List.filled(5, "");
  list2[0]="Gulce";
  list2[3]="Duru";
  print(list2);  // ===> [Gulce, , , Duru, ]

    List list3=List.filled(7, ""); //Eger herhangi bir type vermez isek datatype dynamic olur ve istediğmiz 
                                   // DATA TYPE değerini atayabiliriz.
    list3[0]=5;
    list3[1]="GULCE";
    list3[2]=false;
    list3[3]="Duru";  

    print(list3);  // ====> [5, GULCE, false, Duru, , , ]

    for ( int element in newList) {
      print("$element for each");
    }
}