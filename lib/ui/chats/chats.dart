import 'package:flutter/material.dart';
import 'package:messages/ui/widgets/main_list/list_tiles.dart';
import 'package:messages/ui/widgets/main_list/main_list.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return MainList(type: TypeData.chat, navigateTo: Container());
  }
}
