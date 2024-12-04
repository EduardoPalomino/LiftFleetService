import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String texto;

  const CustomTextField({super.key, required this.texto});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 250,
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: texto,
        ),
      ),
    );
  }
}
