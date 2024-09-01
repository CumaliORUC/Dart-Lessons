void main(List<String> args) {
 
Live live1=Live();
Birds live2=Birds();
Animals live3=Animals();
Plants live4=Plants();

List <Live> all_Lives=[];
all_Lives.add(live1);
all_Lives.add(live2);
all_Lives.add(live3);
all_Lives.add(live4);

print(all_Lives);

print("=====================POLIMORPHIZM=====================================");
test(live1);
test(live2);             //görüldüğü gibi Parent Live ama diperleri child class,
test(live3);             // hepsinden ayrı ayrı instance oluşturup Live.Feature methodu ortak onun içn 
test(live4);             //ayrı bir tane method, oluşturduk gelen instance göre ilgili methodu çalıştırdı.

} 
void test(Live live) {
live.liveFeature();
}

class Live{

  String feature1="They grow";
  String feature2="They die";
  
  void liveFeature(){
    print("All lives grow");
  }
}

class Animals extends Live {
  String feature3="They can move";
  String feature4="They have blood";

  void liveFeature(){
    print("All animals have brain");
  }

}

class Plants extends Live {
  String feature5="They can not move";
  String feature6="They can not fly";
 
  void liveFeature() {
   print("Plants produce the O2");
  }
}

class Birds extends Animals{
  String birdFeature1="They can fly";
  String birdFeature2="They can eat";

  void liveFeature(){
    print("The most feature of birds animal feature is flying ");
  }
}