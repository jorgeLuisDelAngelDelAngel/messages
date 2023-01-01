import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        CircleAvatar(),
        CircleAvatar(),
        CircleAvatar(),
        CircleAvatar(),
      ],
    );
  }
}
