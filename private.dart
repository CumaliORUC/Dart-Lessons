import 'dart:math';

void main(List<String> args) {
  //private değişken ve fonksiyonlar: Class içindeki variable veya mehodaların sadece Class içinde
  //kullanılması ve diğer classlar içinde kullanıma kapatılması için kullanılır.
  //Private yapmak istedğin variable ın sadece önüne "_" eklemek yeterlidir.
  //Artık burada kullanılmasını istemediğin methodları yada variable ları private yaparak kullanıma kapatabilirsin.
  //dikkat etmen gereken husus, aynı Class içinde hala ulaşılabilinir. Ama başka Class tan ulaşılamaz.
  //internet varmi  methodunu görmemize gerek yok. Oyüzden onu daprivate yaptık.
}

class VeritabaniIslemleri {
  String _kullaniciAdi = "Ahmet";
  String _sifre = "123456";
  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "Ahmet" && _sifre == "123456") {
        return true;
      } else {
        print("İnternetinizi kontrol ediniz");
        return false;
      }
    } else {
      return false;
    }
  }
}

bool _internetVarMi() {
  if (Random().nextBool()) {
    return true;
  } else
    return false;
}
