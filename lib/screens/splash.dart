import 'dart:async';

import 'package:e_commerce/screens/home.dart';
import 'package:e_commerce/screens/login.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> loginView() ),)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.teal[100],
      child: const Center(
        child: Image(
          image: AssetImage('images/ecommerce.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
