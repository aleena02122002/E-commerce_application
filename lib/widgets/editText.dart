import 'package:flutter/material.dart';

class EditTextview extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obscureText;
  const EditTextview({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal.shade50),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal.shade100),
            ),
            fillColor: Colors.teal[50],
            filled: true,
            hintText: hintText,
          )
      ),
    );
  }
}
