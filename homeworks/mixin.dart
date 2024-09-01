void main(List<String> args) {
  /*mixin yapısı da class gibi bir yapıdır. 
  inheritance olmadan sahip oldukları variable ve methodları "with" ile kullanabiliriz.
  class with mixin olur ama class with class olmaz.
  classlar mixin'e extends olmaz.
  Diğer önemli bir nokta: 
  Eger mixin bir yapıya with ile başlanmış bir classa extends yaparsan mixin i kullanabilirisin.
  ve bir diğer güzel  özellik olarak birden fazla mixin yapıya with ile bağlanabiliriz.
  */
  final car=Vehicle();
  final car2=Vehicle2();
  car.fn();
  car2.func();
}

mixin Speed {
  int max_vehicle_speed=90;
  int max_vehicle_speed2=50;
}

class Vehicle with Speed, Cat {
  void fn(){
    print(max_vehicle_speed);
    print(animal);
  }

}

class Vehicle2 extends Vehicle{
  int wheelsNumber=23;
 void func(){
  print(max_vehicle_speed2);   //parent classın with ile bağlandığı bir mixin e ulaşabiliriz.

 }
}

mixin Cat{
  String animal="Cat";
}

