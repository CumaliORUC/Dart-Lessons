void main(List<String> args) {
 //extends kelimesi ile parent class a bağlanmış oluruz. Eger aynı methoddan child class ta da var ise;
 // bu durumda @override ile parent methodu baskılamış olluruz.
 //oluştururken ortak değerleri aynı parent classa ekleriz.
 Live live=Live();
  print("=============================Lives====================================");
   print(live.feature1);  //==> parent class can see only it's variables and methods
   live.grow(); 
 print("=============================Animals ====================================");
 Animals animal=Animals();  //==> child class can see only it's and PARENT's insides
   print(animal.feature1);
   print(animal.feature3);
   animal.animalFeaure();

 print("=============================Plants ====================================");
 Plants plant1=Plants();  //==> child (Plants) class can see only it's and PARENT's insides
   print(plant1.feature2);
   plant1.grow();
   plant1.plantFeature();

 print("=============================Birds ====================================");
 Birds bird1=Birds();  //==> child (Birds) class can see only it's and PARENT's and GrandParents insides
   print(bird1.feature2);
   bird1.animalFeaure();  // ==>Eger kendinde aynısı var ise once kendi methodunu kullanır.
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
    print("The most feature of birds animal features is flying ");
  }
}