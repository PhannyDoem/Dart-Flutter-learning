// jokes.dart
class Joke {
  final String title;
  final String description;
  bool isFavorite;

  Joke(
      {required this.title,
      required this.description,
      this.isFavorite = false});
}

// List of jokes that will be used as the "database"
List<Joke> jokesDatabase = [
  Joke(
      title: "Why don’t skeletons fight?",
      description: "They don’t have the guts."),
  Joke(
      title: "What did one ocean say to the other?",
      description: "Nothing, they just waved."),
  Joke(
      title: "Why don't programmers like nature?",
      description: "It has too many bugs."),
  Joke(
      title: "How do you comfort a JavaScript bug?",
      description: "You console it."),
  Joke(
      title: "What did the left eye say to the right eye?",
      description: "Between you and me, something smells."),
  Joke(
      title: "What does a cloud wear under his raincoat?",
      description: "Thunderwear."),
  Joke(
      title: "Why did the scarecrow win an award?",
      description: "Because he was outstanding in his field."),
  Joke(
      title: "I used to play piano by ear",
      description: "But now I use my hands."),
  Joke(
      title: "Why was the math book sad?",
      description: "Because it had too many problems."),
  Joke(
      title: "Why do cows have hooves instead of feet?",
      description: "Because they lactose."),
  Joke(title: "What do you call fake spaghetti?", description: "An impasta."),
  Joke(
      title: "I told my wife she was drawing her eyebrows too high.",
      description: "She looked surprised."),
  Joke(
      title: "Why did the golfer bring an extra pair of pants?",
      description: "In case he got a hole in one."),
  Joke(
      title: "I can't believe I got fired from the calendar factory.",
      description: "All I did was take a day off."),
  Joke(
      title: "What’s orange and sounds like a parrot?",
      description: "A carrot."),
  Joke(
      title: "Why did the tomato turn red?",
      description: "Because it saw the salad dressing."),
  Joke(title: "How does Moses make his coffee?", description: "He brews it."),
  Joke(
      title: "Why can’t you trust an atom?",
      description: "Because they make up everything."),
  Joke(
      title: "I used to be a baker",
      description: "But I couldn’t make enough dough."),
  Joke(
      title: "What does a cloud do when it feels faint?",
      description: "It goes to the sky-ll."),
];
