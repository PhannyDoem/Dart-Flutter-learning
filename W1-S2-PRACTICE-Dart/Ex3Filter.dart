void main() {
  List<int> studentScores = [45, 78, 62, 49, 85, 33, 90, 50];

  List<int> passedStudents = studentScores.where((score) => score >= 50).toList();
  int numStudentsPassed = passedStudents.length;
  print("List of Students Who Passed: $passedStudents");
  print("$numStudentsPassed students passed");
}
