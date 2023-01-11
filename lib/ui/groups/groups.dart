import 'package:flutter/material.dart';
import 'package:messages/ui/widgets/main_list/list_tiles.dart';
import 'package:messages/ui/widgets/main_list/main_list.dart';

class Groups extends StatelessWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainList(type: TypeData.group, navigateTo: Container());
  }
}
