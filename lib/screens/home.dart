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

      body: MyGridView(),
      // body: GridView.builder(
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       crossAxisSpacing: 8.0,
      //       mainAxisSpacing: 8.0,
      //       childAspectRatio: 1.0,
      //     ),
      //     itemCount: 10,
      //     itemBuilder: (context,index){
      //       return Container(
      //         width: 50.0,
      //         height: 50.0,
      //         child: const Image(image: AssetImage('images/shoes.jpeg'),
      //         fit: BoxFit.contain,
      //         ),
      //       );
      //     }
      // )
    );
  }
}
class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.5,
      ),
      children: [
        Padding(padding: const EdgeInsets.all(8.0),
        child: Image.asset('images/shoes.jpeg', width: 500.0, height: 100.0,fit: BoxFit.contain,),
        ),

        Image.asset('images/clothes.jpg', width: 50.0, height: 50.0),
        Image.asset('images/suits.jpg', width: 50.0, height: 50.0),

      ],
    );
  }
}