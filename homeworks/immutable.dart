void main(List<String> args) {
Student std1=const Student(20, "cumali"); 
Student std3=const Student(20, "cumali");
print(std1.Id);
// std1.Id=30; id final olduğundan hata veriyor.
Student std2=Student(20, "cumali"); //burada yeni bir atama yaptık.
std2.Id;

if (std1==std3) {   //const olduğu için std1 ve std3 aynı yeri point eder ve eşit olur 
  print("eşit");
} else print("eşit değil");

}

class Student {
  final String isim;
  final int Id;

  const Student(this.Id, this.isim);
}