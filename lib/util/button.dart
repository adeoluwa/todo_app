import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const CustomButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
