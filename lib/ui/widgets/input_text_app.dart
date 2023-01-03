import 'package:flutter/material.dart';

class InputTextApp extends StatelessWidget {
  const InputTextApp({
    this.controller,
    this.padding,
    this.margin,
    Key? key,
  }) : super(key: key);

  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: TextFormField(controller: controller),
    );
  }
}
