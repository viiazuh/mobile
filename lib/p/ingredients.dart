import 'package:flutter/material.dart';

class MyIngredients extends StatefulWidget {
  const MyIngredients({super.key});

  @override
  State<MyIngredients> createState() => _MyIngredientsState();
}

class _MyIngredientsState extends State<MyIngredients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount:  3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(child: Image.network("https://picsum.photos/seed/picsum/200/300"),),
          Container(child: Image.network("https://picsum.photos/seed/picsum/200/300"),),
          Container(child: Image.network("https://picsum.photos/seed/picsum/200/300"),),
          Container(child: Image.network("https://picsum.photos/seed/picsum/200/300"),)
        ],
      ),
    );
  }
}