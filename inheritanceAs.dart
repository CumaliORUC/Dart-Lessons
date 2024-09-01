void main(List<String> args) {
 //extends kelimesi ile parent class a bağlanmış oluruz. Eger aynı methoddan child class ta da var ise;
 // bu durumda @override ile parent methodu baskılamış olluruz.
 //oluştururken ortak değerleri aynı parent classa ekleriz.
 Live live=Live();
  live.grow();

 Live bird3=Birds();
 print("This is coming for lives: ${(bird3 as Birds).birdFeature1}");   //burada alt classın özeeliğini kullandı.
 bird3.animalFeaure();
} 

class Live{

  String feature1="They grow";
  String feature2="They die";
  
  void grow(){
    print("All lives grow");
  }
}

class Animals extends Live {
  String feature3="They can move";
  String feature4="They have blood";
  void animalFeaure(){
    print("All animals have brain");
  }

}

class Plants extends Live {
  String feature5="They can not move";
  String feature6="They can not fly";
  
  void plantFeature() {
   print("Plants produce the O2");
  }
}

class Birds extends Animals{
  String birdFeature1="They can fly";
  String birdFeature2="They can eat";

  void animalFeaure(){
    print("The most feature of birds animal feature is flying ");
  }
}