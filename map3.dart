void main(List<String> args) {
  Map<String, int> marksUserA = {
    'Math': 20,
    'Fizik': 34,
    'İngilizce': 44,
    'Türkçe': 56
  };

  // print(marksUserA);
  marksUserA.forEach((key, value) {
    //burası direk bize json methodu gibi getiriyor
    print('$key  $value');
  });

  //List Maps

  List<Map<String, int>> notlar = [    //List içinde Map
    {'Math': 34, 'Fizik': 23, 'İngilizce': 33, 'Türkçe': 55},
    {'Math': 18, 'Fizik': 44, 'İngilizce': 48, 'Türkçe': 66},
    {'Math': 60, 'Fizik': 64, 'İngilizce': 64, 'Türkçe': 56},
    marksUserA
  ];

  notlar.map((e) {
    print(e);
  }).toList();

  print("==================================");

  notlar.map((e) {  //yapı list olduğundan map() methodu ile onu düzenledik 
                               //ve key ve value olarak yazdırdık. List olduğu için to list e çevirdik
    e.forEach((key, value) {
      print('$key : $value');
    });
  }).toList();
}
