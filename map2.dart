void main(List<String> args) {
  //spreads operators
  //birden fazla map, list ya da set leri birliştirirken addAll methodu dışında
  //spreads yöntemi ile de birleştirebiliriz.

  var mayMap=<int, String>{
   4316:"CO",
   4315:"CÖ",
   4314:"FB"
  };

  var mayMap2=<int, String>{
   4317:"EP",
   4313:"TK",
   4312:"TM"
  };
  //spreads operator birleştirme
  var myMap3={...mayMap2, ...mayMap};

  print(myMap3);
}