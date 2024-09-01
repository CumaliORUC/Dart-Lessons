void main(List<String> args) {
  List methodlist=[];
  methodlist.add("Ayşe");
  methodlist.add(45);
  methodlist.add(true);
  methodlist.add(34);
  methodlist.add(12);
  methodlist.add(55);
  methodlist.add(4);

  //.first -->ilkini getirir.
  //.last --> sondakini getirir.

  print("Listenin ilk elemanı ${methodlist.first}");
  print("Listenin son elemanı ${methodlist.last}");
  print("Listi tersin hali ==> ${methodlist.reversed}");
  
  //.isEmpty --> boş mu?
  //remove(value) gider ilk bulduğu value yi siler
  // removeAt() gider indexi siler
  //clear() hepsini siler
  //contains(9) listede var mı? ona bakar
  print("Listede Ayşe var mı? ==> ${methodlist.contains("Ayşe")}");

  methodlist.remove(55);    //55 silindi
  print(methodlist);
  //elementAt() içindeki indexin elementini getirir.
  //indexof(11) içindeki değerin indexini getirir.
  //shuffle()  listeyi karmaya yarar. Yeniden karıştırır.

  //Not Sabit boyutlu arraylarde bu methodlar çalışmaz

}