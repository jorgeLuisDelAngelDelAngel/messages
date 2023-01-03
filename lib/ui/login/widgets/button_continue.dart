import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    required this.register,
    required this.loading,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final bool register;
  final bool loading;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loading ? null : (register ? _signUp : _signIn),
      child: const Text('Continue'),
    );
  }

  void _signUp() {
    onTap.call();
  }

  void _signIn() {
    onTap.call();
  }
}
