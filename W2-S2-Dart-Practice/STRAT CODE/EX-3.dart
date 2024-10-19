class MyDuration {
  int seconds;
  int minutes;
  int hours;
  // constructor in class MyDuration
  MyDuration(this.seconds, this.minutes, this.hours);

  // Create a duration from hours
  MyDuration.fromHours(int hours) : this(0, 0, hours);

  // Create a duration from minutes
  MyDuration.fromMinutes(int minutes) : this(0, minutes, 0);

  // Display the duration in a readable format
  @override
  String toString() {
    int totalSeconds = seconds + minutes * 60 + hours * 3600;
    int displaySeconds = totalSeconds % 60;
    int totalMinutes = (totalSeconds / 60).floor();
    int displayMinutes = totalMinutes % 60;
    int displayHours = (totalMinutes / 60).floor();
    return '$displayHours hours, $displayMinutes minutes, $displaySeconds seconds';
  }

  // Add two durations
  MyDuration operator +(MyDuration other) {
    int totalSeconds = this.seconds + other.seconds;
    int totalMinutes = this.minutes + other.minutes;
    int totalHours = this.hours + other.hours;
    return MyDuration(totalSeconds, totalMinutes, totalHours);
  }

  // Subtract two durations
  MyDuration operator -(MyDuration other) {
    int totalSeconds = this.seconds + this.minutes * 60 + this.hours * 3600;
    int otherTotalSeconds =
        other.seconds + other.minutes * 60 + other.hours * 3600;
    int resultSeconds = totalSeconds - otherTotalSeconds;
    if (resultSeconds < 0) {
      throw Exception('Resulting duration cannot be negative');
    }
    int displaySeconds = resultSeconds % 60;
    int totalMinutes = (resultSeconds / 60).floor();
    int displayMinutes = totalMinutes % 60;
    int displayHours = (totalMinutes / 60).floor();
    return MyDuration(displaySeconds, displayMinutes, displayHours);
  }

  // Compare two durations
  bool operator >(MyDuration other) {
    int totalSeconds = this.seconds + this.minutes * 60 + this.hours * 3600;
    int otherTotalSeconds =
        other.seconds + other.minutes * 60 + other.hours * 3600;
    return totalSeconds > otherTotalSeconds;
  }

  bool operator <(MyDuration other) {
    int totalSeconds = this.seconds + this.minutes * 60 + this.hours * 3600;
    int otherTotalSeconds =
        other.seconds + other.minutes * 60 + other.hours * 3600;
    return totalSeconds < otherTotalSeconds;
  }
}

void main() {
  MyDuration duration1 = MyDuration.fromHours(4);
  MyDuration duration2 = MyDuration.fromMinutes(12);
  print(duration1 + duration2);
  print(duration1 > duration2);

  try {
    print(duration2 - duration1); // This will throw an exception
  } catch (e) {
    print(e);
  }
}
