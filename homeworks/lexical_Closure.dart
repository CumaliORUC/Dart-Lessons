void main(List<String> args) {
  
  var d=topla(5);  //burada iç içe fonksiyon var am abir önceki değeri içinde tutan değerler var.
                   // Once 5 gönderdik o 5 tuttu sonra bize başka bir değer isteyen ayrı bir method geri dönderdi.
                   //ona verdiğimiz ikinci deger ile birinci değeri de çarpmış oldu.

  print(d(10));

}

Function topla(int sayi1) {
  return (int deger)=> sayi1*deger;
}