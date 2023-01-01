import 'package:flutter/material.dart';
import 'package:messages/core/core.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final Core core = Core.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<User?>(
          future: core.acountService.getUser(),
          builder: (_, snapchot) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(snapchot.data?.name ?? 'name'),
              Text(snapchot.data?.email ?? 'email'),
            ],
          ),
        ),
      ),
    );
  }
}
