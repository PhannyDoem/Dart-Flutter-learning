void main() {
  Car myCar = Car(fastDrive);
  myCar.drive();
  print(myCar);
}

class Car {
  Function() drive;

  Car(this.drive);

  @override
  String toString() {
    return 'Car is ready to drive.';
  }
}

void slowDrive() {
  print('Driving slowly.');
}

void fastDrive() {
  print('Driving super fast');
}
