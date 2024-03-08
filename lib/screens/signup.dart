import 'package:e_commerce/widgets/editText.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
   SignUpView({super.key});
  final nameController = TextEditingController();
  final passController = TextEditingController();
  final helloController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text("SignUp",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 40),
              EditTextview(controller: nameController, hintText: "Name", obscureText: false),
              EditTextview(controller: passController, hintText: "Password", obscureText: true),
            ],
          ),
        ),
      ),
    );
  }
}
