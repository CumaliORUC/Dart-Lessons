
class CemberDaire {
  int _r=1;
  double _PI=3.14;

  CemberDaire(int deger) {
    _r=_degerKontrol=deger;   // ==> Burada set methoduna bir atama yaptık ve deger
                            // 0 dan büyük ise işlem yapsın istiyoruz.               
  }

  void set _degerKontrol(int deger) {
    if (deger>0) {
      _r=deger;
    } else _r=1;
  }
   
  double cevreHesapla() {
     double sonuc=0;
     sonuc= 2*_PI*_r;
     return sonuc;
  }

   double alaHesapla() {
     double sonuc=0;
     sonuc= _PI*_r*_r;
     return sonuc;
  }
}