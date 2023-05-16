class Student {
  // private property
  String? _firstname;
  String? _lastname;
  int? _age;
  //geter to get to full anme
  String get fulName => "$_firstname + $_lastname";
//getter to read private property name
  int get age => _age!;
  // settr to update private prioprty name
  set firstname(String name) => _firstname = name;
  //
  set lastname(String lastname) => _lastname = lastname;
  //setter to update private property age
  set age(int age) {
    if (age < 18) {
      throw Exception('age mast more than then thiro ');
    }
    _age = age;
  }
}

void main() {
  Student as = Student();
  as.firstname = "Argen";
  as.lastname = "Nadyrbekov";
  as.age = 19;
  //rezalt with print()
  print(as.fulName);
  print("${as._age}");
}
