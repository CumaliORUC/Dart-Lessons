import 'dart:io';

void main(List<String> args) {
  int girilenNot=0;
  List notlar=[];
  int sonuc=0;
  do {
    print("Notunuzu giriniz çıkış için -1 e basınız");
    girilenNot=int.parse(stdin.readLineSync()!);
    if (girilenNot !=0) {
      notlar.add(girilenNot);
    }
    for (int element in notlar) {
     sonuc+=element;
    }
    print(notlar);
  } while (girilenNot!= 0);
  print("Not ortalmanız : ${sonuc/(notlar.length)}");
}