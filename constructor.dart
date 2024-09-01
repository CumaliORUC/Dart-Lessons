void main(List<String> args) {

 Vehicle honda=Vehicle(2022,type:"Oto",isAuto_shift:true);
 honda.vehicle=8;
 print(honda.vehicle);
 honda.isChainnes=false;
 print("Honda nın kaynağı Çin mi? ${honda.isChainnes}");
 Vehicle toyota=Vehicle.toyota(9999);

 print(toyota.model);
}

class Vehicle {
  int vehicle=4;
  bool? isAuto_shift;
  String? type="SUV";
  bool isChainnes=false;
  int? model;

  void fuelCost(double fuel) {
    print("100 km cost is ${fuel*4.1} TL for ${fuel}");
  }
  
  Vehicle (int model, {this.type, this.isAuto_shift}) {

    print("Parametreli Constuctor çalıştı");
    print("Honda Autoshift is ${this.isAuto_shift=isAuto_shift} Honda vehicle type is ${this.type=type}");
    var year=DateTime.now().toString().substring(0,4);
    int yearNum=int.parse(year);
    print("Age is the car for the time being ${yearNum-model}");
  }

  Vehicle.toyota(this.model) {
    print("Toyota constuctor çalıştı");
    //print(model);
  }
}