import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String texto;
  const CustomButton({super.key, required this.texto});
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return ElevatedButton(
    style: style,
    onPressed: () {},
    child: const Text('Enabled'),
    );
  }
}
