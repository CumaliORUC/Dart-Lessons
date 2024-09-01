void main(List<String> args) {
  int sonuc=sumEvenNumbers(6);
  print("6 kadar olan çift sayıların toplamı $sonuc tur");

 double circleResult=circleSquare(6);
 print("Yarıçapı 6 olan dairenin alanı $circleResult dır");

 triangle(r1:5, r3:6, r2:5);
}


//verilen sayıya kadar olan çift sayıların toplamını yapar
int sumEvenNumbers(int number) {
  int toplam=0;
  for (int i=0; i<=number; i++) {
    if (i%2==0) {
      toplam=toplam+i;
  } 
  } return toplam;
}

//daire alanını hesaplayan fonksiyon

double circleSquare(int r, [double Pi=3.14]) {
  return r*r*Pi;
} 

void triangle({int r1=1, int r2=1, int r3=1}){
 if ((r1==r2) && (r1==r3)) print("bu bir eşkenar ügendir");
 else if ((r1==r2) || (r1==r3) || (r2==r3)) print ("bu bir ikizkenar ügendir");
 else print ("bu farklı kenarlardan oluşan bir üçgendir");
}