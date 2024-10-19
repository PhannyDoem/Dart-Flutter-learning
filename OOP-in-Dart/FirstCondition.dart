import 'dart:math';

void main() {
  student();
}

void student() {
  int score = Random().nextInt(100) + 1;

  print("Grade: A is Excelent");
  print("Grade: B is Very Good");
  print("Grade: C is Good");
  print("Grade: D is Fair");
  print("Grade: E is Fairly good");
  print("Grade: F is Failed");
  print("Score is : $score");
  if (score < 50) {
    print('You are grade \'F\'');
  } else if (score >= 50 && score < 60) {
    print('You are grade \'E\'');
  } else if (score >= 60 && score < 70) {
    print('You are grade \'D\'');
  } else if (score >= 70 && score < 80) {
    print('You are grade \'C\'');
  } else if (score >= 80 && score < 90) {
    print('You are grade \'C\'');
  } else if (score >= 90 && score < 98) {
    print('You are grade \'B\'');
  } else if (score >= 98.1) {
    print('You are grade \'A\'');
  }
}
