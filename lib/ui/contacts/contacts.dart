import 'package:flutter/material.dart';
import 'package:messages/ui/widgets/main_list/list_tiles.dart';
import 'package:messages/ui/widgets/main_list/main_list.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainList(type: TypeData.chat, navigateTo: Container());
  }
}
