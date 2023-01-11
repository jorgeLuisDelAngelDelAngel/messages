import 'package:flutter/material.dart';
import 'package:messages/ui/widgets/main_list/list_tiles.dart';

class MainList extends StatelessWidget {
  const MainList({
    required this.type,
    required this.navigateTo,
    Key? key,
  }) : super(key: key);

  final TypeData type;
  final Widget navigateTo;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, int index) => ListTileApp(
        type: type,
        navigateTo: navigateTo,
      ),
    );
  }
}
