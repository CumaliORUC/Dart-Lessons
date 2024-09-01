void main(List<String> args) {
//instance değişkenler sadece final olarak tanımlanır. Const ile tanılanmaz
//const ile tanımlanması için static olmalıdırlar.
/*
final String isim="Cumali";
isim="Ali"; //final oldupu için yeniden atama yapamazsın. final RTE dir.
            //const is compile time datalar için kullanılır.

const String isim2="Oruc";
isim2="Karahan"; 
*/

//final listeler oluştrulduğunda listenin içerisine yeni değerler ekleyip çıkartabiliriz.
//ama aynı liste ismini başka bir listeye veremezsin. Yani yeni bir liste yapamazsın.

final list=[1,2,3,4];
final list2=[1,2,3,4];
list.add(5);
list.add(6);

if(list==list2){
  print("equals");
} else print("not equal"); 


const lis3=[2,3,4,5];
const lis4=[2,3,4,5];

if(lis3==lis4){
  print("equals");
} else print("not equal"); 


lis3.add(7);
}