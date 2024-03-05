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
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        children: List.generate(20, (index) {
          return Padding(padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('images/ecommerce.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0),),
                ),
              ),
            ],
          ),
          );
        },),
      ),
    );
  }
}
