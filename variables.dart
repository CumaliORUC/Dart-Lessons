void main(List<String> args) {
  //dart içinde 3 tip variable vardır
  //numaralar için;
  // int veya double  ya da babaları num (int, double, num)
  //String ifadeler için String
  //boolen şfadeler için bool

  num yas=12.5;
  int yas1=15;
  double yas3=34;

  String kisi="Ahmet";
  print('1.kisi olan ${kisi} in yasi ${yas3}  dir');
  print(yas +yas1);
  // burası artık çalışmıyor print (yas1 + "bu yaş oldukça büyük");
  bool isFemale=false;
  print(isFemale);
  //eger variable tipi ile uğraşmakistemiyorsak doğrudan var da yapabiliriz. böylece atadığmız veri tipine göre 
  //kendisi doğrudan veri tipini atayacaktır.
  //null safety için de string/int/bool 
  //Önemli not
}