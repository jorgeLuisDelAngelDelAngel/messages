import 'package:flutter/material.dart';
import 'package:messages/ui/widgets/input_text_app.dart';

class Inputs extends StatelessWidget {
  const Inputs({
    this.name,
    this.email,
    this.password,
    Key? key,
  }) : super(key: key);

  final TextEditingController? name;
  final TextEditingController? email;
  final TextEditingController? password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          name != null
              ? InputTextApp(controller: name)
              : const SizedBox.shrink(),
          email != null
              ? InputTextApp(controller: email)
              : const SizedBox.shrink(),
          password != null
              ? InputTextApp(controller: password)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
