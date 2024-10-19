void main() {
  GenderType gender1 = GenderType(Gender.Female);
  GenderType gender2 = GenderType(Gender.Male);

  print('The gender is $gender1');
  print('The gender is $gender2');
}

class GenderType {
  Gender genderType;
  GenderType(this.genderType);

  @override
  String toString() {
    return genderType == Gender.Female ? 'Female' : 'Male';
  }
}


enum Gender {
  Female,
  Male,
}
