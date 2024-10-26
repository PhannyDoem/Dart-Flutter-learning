enum Skill {
  FLUTTER(50000000000000),
  DART(3000),
  JAVA(6000),
  PYTHON(2000),
  PHP(5);

  final double salaryBonus;

  const Skill(this.salaryBonus);
}

class Address {
  final String street;
  final String city;
  final String zipCode;

  Address(this.street, this.city, this.zipCode);

  @override
  String toString() {
    return '$street, $city, $zipCode';
  }
}

class Employee {
  static const double BASE_SALARY = 40000;

  final String _name;
  final List<Skill> _skills;
  final Address _address;
  final int _yearsOfExperience;

  // Constructor with required parameters
  Employee(this._name, this._address, this._yearsOfExperience, this._skills);

  // Named constructor for mobile developer with predefined skills (FLUTTER and DART)
  Employee.mobileDeveloper(String name, Address address, int yearsOfExperience)
      : this._name = name,
        this._address = address,
        this._yearsOfExperience = yearsOfExperience,
        this._skills = [Skill.FLUTTER, Skill.DART];

  // Getters
  String get name => _name;
  Address get address => _address;
  List<Skill> get skills => _skills;
  int get yearsOfExperience => _yearsOfExperience;

  // Calculate salary based on years of experience and skills
  double calculateSalary() {

    // 1 - Base salary
    double salary = BASE_SALARY;

    // 2 - Experience bonus
    salary += _yearsOfExperience * 2000; 

    // 3 -  Skill bonus
    for (var skill in _skills) {
       salary += skill.salaryBonus; 
    }
    
    return salary;
  }

  void printDetails() {
    print('Employee: $_name');
    print('Address: $_address');
    print('Years of Experience: $_yearsOfExperience');
    print('Skills: ${_skills.map((e) => e.toString().split('.').last).join(', ')}');
    print('Salary: \$${calculateSalary()}\n');
  }
}

void main() {
  // Instances of Address
  var address1 = Address('123 Main St', 'New York', '10001');
  var address2 = Address('456 Elm St', 'Los Angeles', '90001');

  // Employee created with general constructor
  var emp1 = Employee('Alice', address1, 5, [Skill.FLUTTER, Skill.PYTHON]);
  emp1.printDetails();

  // Employee created with web developer named constructor
  var emp2 = Employee.mobileDeveloper('Bob', address2, 3);
  emp2.printDetails();

  // Another general constructor with different skills
  var emp3 = Employee('Charlie', address2, 7, [Skill.JAVA, Skill.JAVA, Skill.PYTHON]);
  emp3.printDetails();
}
