class Person {
  String name;
  String age;

  Person(this.name, this.age);

  void printHello() {
    print('My name is : $name');
    print('Age : $age');
  }
}

class Student extends Person {
  String school;
  Student(String name, String age, this.school) : super(name, age);

  void study() {
    print('My name is $name is studying at $school. and age is $age');
  }
}

void main() {
  var student = Student("Vathana", "23", "CADT");
  student.study();
}
