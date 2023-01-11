import 'package:flutter/material.dart';
import 'package:messages/core/core.dart';
import 'package:messages/ui/chats/chats.dart';
import 'package:messages/ui/contacts/contacts.dart';
import 'package:messages/ui/groups/groups.dart';
import 'package:messages/ui/widgets/tabs/tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Core core = Core.instance;

  User? user;

  @override
  void initState() {
    super.initState();
    core.acountService.getUser().then((User? e) => setState(() => user = e));
  }

  @override
  Widget build(BuildContext context) {
    return Tabs(
      title: user?.name ?? 'Loading...',
      headers: const <Widget>[
        Text('CHATS'),
        Text('GROUPS'),
        Text('CONTACTS'),
      ],
      children: const <Widget>[
        Chats(),
        Groups(),
        Contacts(),
      ],
    );
  }
}
