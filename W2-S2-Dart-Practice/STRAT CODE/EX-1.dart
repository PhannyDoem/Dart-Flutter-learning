// list of skill
enum Skill { FLUTTER, DART, OHTER }

// class employee
class Employee {
  // attribute of variable declare with private
  final String _name;
  final double _baseSalary;

  // new attribute in class Employee
  final int _yearOfExperience;

  // a class Address
  final Address _address;

  // a list of Skill
  final List<Skill> _skills;

  // constructore for class Employee
  Employee(this._name, this._baseSalary, this._yearOfExperience, this._address,
      this._skills);

  // update the constructor specific types of class Employee work with DART
  Employee.MobileDeveloperWithDART(
    this._name,
    this._baseSalary,
    this._yearOfExperience,
    this._address,
  ) : _skills = [Skill.DART];

  // update the constructor specific types of class Employee work with DART
  Employee.MobileDeveloperWithFlutter(
    this._name,
    this._baseSalary,
    this._yearOfExperience,
    this._address,
  ) : _skills = [Skill.FLUTTER];

  // make all attribute private and provide getter method for accessing
  String get name => _name;
  double get baseSalary => _baseSalary;
  int get yearOfExperience => _yearOfExperience;
  Address get address => _address;
  List<Skill> get skill => _skills;

  // the method computer salary
  double computerSalary() {
    double salary = _baseSalary;
    salary += _yearOfExperience * 2000;
    for (var skill in _skills) {
      salary += _getBonus(skill);
    }
    return salary;
  }

  // method bonus
  double _getBonus(Skill skill) {
    switch (skill) {
      case Skill.FLUTTER:
        return 5000;
      case Skill.DART:
        return 3000;
      case Skill.OHTER:
        return 1000;
      default:
        return 0;
    }
  }

// method to display employee's information
  void displayResult() {
    print("Employee Name: $name");
    print("Base Salary: \$${baseSalary}");
    print("Years of Experience: $yearOfExperience");
    print(
        "Address: ${_address._street}, ${_address._city} ${_address._zipCode}");
    print(
        "Skills: ${_skills.map((skill) => skill.toString().split('.').last).join(', ')}");
    computerSalary();
  }
}

// class Address
class Address {
  // attribute of variable declare with private
  final String _city;
  final String _street;
  final String _zipCode;

// constructor of class Address
  Address(this._city, this._street, this._zipCode);
}

// method main
main() {
  // object for Employee skill Mobile Developer work with DART
  Address address1 = Address('Tokyo', '52AF', '1945E');
  Employee employeeWorkDart =
      Employee.MobileDeveloperWithDART('Naroto Mek', 5000, 7, address1);
  employeeWorkDart.displayResult();

  // object for Employee skill Mobile Developer work with FLUTTER
  Address address2 = Address('Phnom Penh', '5A', '1892ED');
  Employee employeeWorkFlutter =
      Employee.MobileDeveloperWithFlutter('Phanny Doem', 7000, 8, address2);
  employeeWorkFlutter.displayResult();
}
