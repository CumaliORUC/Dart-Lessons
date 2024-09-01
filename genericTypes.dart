void main(List<String> args) {
  double doubleOrt=ortalamaBul<double>(7.6, 8.8);
  double intOrt=ortalamaBul<int>(6,5);
  print("Double ortalama $doubleOrt");
  print("integer ortalama $intOrt");

}

ortalamaBul<T extends num>(T num1,T num2) {    
//burada num extends derken sadece numaralara extends yap
// yani diğer general ifadeleri uzak tut.
  return (num1 +num2)/2;
}