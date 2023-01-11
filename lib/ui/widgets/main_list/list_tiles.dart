import 'package:flutter/material.dart';

enum TypeData {
  chat,
  group,
  contact,
}

class ListTileApp extends StatelessWidget {
  const ListTileApp({
    required this.type,
    required this.navigateTo,
    Key? key,
  }) : super(key: key);

  final TypeData type;
  final Widget navigateTo;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case TypeData.chat:
        return _chat(context);
      case TypeData.group:
        return _group(context);
      case TypeData.contact:
        return _contact(context);
    }
  }

  ListTile _chat(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(radius: 25),
      title: const Text('Jorge Luis'),
      subtitle: const Text('Hola mi amor hermosa'),
      trailing: const Text('03:30 p.m.'),
      onTap: () => _onTap(context),
    );
  }

  ListTile _group(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(radius: 25, backgroundColor: Colors.green),
      title: const Text('Los Mishi guapos'),
      subtitle: const Text('Hoy toca exponer sobre los michis adobados'),
      trailing: const Text('03:50 p.m.'),
      onTap: () => _onTap(context),
    );
  }

  ListTile _contact(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(radius: 25, backgroundColor: Colors.amber),
      title: const Text('Jorge Luis'),
      trailing: const Text('ESTUDIANDO'),
      onTap: () => _onTap(context),
    );
  }

  void _onTap(BuildContext context) {
    Route route = MaterialPageRoute(builder: (_) => navigateTo);
    Navigator.push(context, route);
  }
}
