void main(List<String> args) {
  /*
  Generic tipleri belirtirken  de nullable ve non-nullable kavaramlar geçerlidir.
  Burada önemli olan ? nereye koyduğumuzdur.
 */

 List <String> stringListesi=['Emre', 'Ahmet', 'Ayşe'];
 List<String>? nullOlabilecekStringListesi;  //burada liste olduğu için > sonrasına ? koyduk Yani type ne ise onun yanına koyuyoruz
 List<String?> nullOlabilecekStringlerTutanListe=['Ahmet', null, 'Ali']; //içerik null olamayacağı için String? dedik

 print('String listesi $stringListesi');
 print('Null olabilecek String listesi $nullOlabilecekStringListesi');
 print('Nullolabilecek stringleri Tutan  liste $nullOlabilecekStringlerTutanListe');
}