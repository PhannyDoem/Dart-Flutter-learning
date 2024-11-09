import 'package:flutter/material.dart';

List<String> images = [
  "images/bird.jpg",
  "images/bird2.jpg",
  "images/insect.jpg",
  "images/girl.jpg",
  "images/man.jpg",
];

void main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
    // this line remove "DEBUG" banner. By default, it is set to true, which means the "DEBUG" banner is shown
    home: ChangeImage()));

class ChangeImage extends StatefulWidget {
  const ChangeImage({super.key});

  @override
  State<ChangeImage> createState() => _ChangeImageState();
}

class _ChangeImageState extends State<ChangeImage> {
  int currentIndex = 0;

  void nextImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
    });
  }

  void previousImage() {
    setState(() {
      currentIndex = (currentIndex - 1 + images.length) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: previousImage,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: nextImage,
            ),
          ),
        ],
      ),
      body: Image.asset(images[currentIndex]),
    );
  }
}
