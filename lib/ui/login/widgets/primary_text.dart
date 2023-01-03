import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  const PrimaryText({required this.text, Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
