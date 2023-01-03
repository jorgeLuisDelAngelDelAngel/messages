import 'package:flutter/material.dart';

class ChangeButton extends StatelessWidget {
  const ChangeButton({
    required this.text,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: _container(),
    );
  }

  Widget _container() {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: _decoration(),
        child: _child(),
      ),
    );
  }

  Row _child() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[_text(), _icon()],
    );
  }

  Icon _icon() => const Icon(Icons.arrow_forward, color: Colors.white);

  Text _text() {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 10,
      ),
    );
  }

  BoxDecoration _decoration() {
    return const BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
      ),
    );
  }
}
