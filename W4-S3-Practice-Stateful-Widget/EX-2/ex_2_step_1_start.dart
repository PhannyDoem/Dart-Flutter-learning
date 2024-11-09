import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text("Favorite cards"),
            ),
            body: const FavoriteCardList()),
      ),
    );

class FavoriteCardList extends StatelessWidget {
  const FavoriteCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FavoriteCard(),
        FavoriteCard(),
        FavoriteCard(),
      ],
    );
  }
}

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = true;
  void toggleFavorite() {
    setState(() {
      isFavorite = false;
    });
  }

  IconData get _getIcon => isFavorite ? Icons.favorite_outline : Icons.favorite;
  Color get _getColor => isFavorite ? Colors.grey : Colors.red;

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
          const Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'title',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 10.0),
                Text('description')
              ],
            ),
          ),
          IconButton(
              onPressed: toggleFavorite, icon: Icon(_getIcon, color: _getColor))
        ],
      ),
    );
  }
}
