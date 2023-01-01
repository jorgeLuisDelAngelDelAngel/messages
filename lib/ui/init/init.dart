import 'package:flutter/material.dart';
import 'package:messages/core/core.dart';
import 'package:messages/ui/login/login.dart';

class InitPage extends StatelessWidget {
  InitPage({Key? key}) : super(key: key);

  final Core core = Core.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(body: Center(child: Login())),
    );
  }
}
