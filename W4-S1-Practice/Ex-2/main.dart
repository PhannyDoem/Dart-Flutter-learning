import 'package:flutter/material.dart';

enum Product {
  dart(
    title: 'Dart',
    image: 'images/dart.png',
    description: 'The best object language',
  ),
  flutter(
    title: 'Flutter',
    image: 'images/flutter.png',
    description: 'The best moblie widget library',
  ),
  firebase(
    title: 'Firebase',
    image: 'images/firebase.png',
    description: 'The best cloud database',
  );

  final String title;
  final String image;
  final String description;

  const Product({
    required this.title,
    required this.image,
    required this.description,
  });
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text("Products"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(color: Colors.blue),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ProductCard(
                product: Product.dart,
              ),
              SizedBox(
                height: 10,
              ),
              ProductCard(
                product: Product.flutter,
              ),
              SizedBox(
                height: 10,
              ),
              ProductCard(
                product: Product.firebase,
              ),
            ],
          ),
        )),
  ));
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.image,
              width: 100,
            ),
            Text(
              product.title,
              style: const TextStyle(
                fontSize: 35,
              ),
            ),
            Text(product.description)
          ],
        ),
      ),
    );
  }
}
