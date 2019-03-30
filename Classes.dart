void main(){
  Person ros = new Person("Rosendo");
  
  print('Person name ${ros.GetName()}');
}
 
class Person{
  String firstName;
  
  Person(this.firstName);
  
  String GetName() =>firstName;
  void SetName(String firstName)=> this.firstName = firstName;
}