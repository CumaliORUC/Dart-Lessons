void main(List<String> args) {
  print("İşlem başladı");
  Future.delayed(Duration(seconds: 0),(){
     print("Ben future işlemi yaptım");
  });
  print("İşlem bitti");
}