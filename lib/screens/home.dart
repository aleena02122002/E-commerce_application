import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart),onPressed: (){}),
          IconButton(icon: const Icon(Icons.favorite),onPressed: (){})
        ],
      ),
      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.9,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: const Image(image: AssetImage('images/shoes.jpeg'),
              height: 100,
            ),
          )
        ]
        ),
    );
  }
}
