
import 'package:e_commerce/widgets/editText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginView extends StatelessWidget {
  const loginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: const SafeArea(
        child: Center(
          child: Column(
            children:[
              SizedBox(height: 50),
              Icon(Icons.shopping_cart, size: 100,),
              SizedBox(height: 30),

             Text("LOGIN PAGE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
             SizedBox(height: 20),
              EditTextview(),
              ],
          ),
        ),
      ),
    );
  }
}
