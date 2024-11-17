import 'package:flutter/material.dart';
import 'jokes.dart';

Color appColor = Colors.green[300] as Color;

void main() => runApp(const MaterialApp(
      home: FavoriteCard(),
    ));

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  List<Joke> jokes = jokesDatabase;
  void _toggleFavorite(int index) {
    setState(() {
      for (var joke in jokes) {
        // Unmark all jokes as favorite first
        joke.isFavorite = false;
      }
      // Mark the selected joke as favorite
      jokes[index].isFavorite = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        title: const Text("Favorite Jokes"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...jokes.map((joke) => Favorite(
                  joke: joke,
                  onFavoriteClick: () => _toggleFavorite(jokes.indexOf(joke)),
                ))
          ],
        ),
      ),
    );
  }
}

class Favorite extends StatelessWidget {
  final VoidCallback onFavoriteClick;
  final Joke joke;
  const Favorite(
      {super.key, required this.onFavoriteClick, required this.joke});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  joke.title,
                  style:
                      TextStyle(color: appColor, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10.0),
                Text(joke.description)
              ],
            ),
          ),
          IconButton(
              onPressed: onFavoriteClick,
              icon: Icon(
                joke.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: joke.isFavorite ? Colors.red : Colors.grey,
              ))
        ],
      ),
    );
  }
}
