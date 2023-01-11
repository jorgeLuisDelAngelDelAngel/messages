import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({
    required this.headers,
    required this.children,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;
  final List<Widget> headers;
  final List<Widget> children;

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.children.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(tabs: widget.headers),
        ),
        body: TabBarView(children: widget.children),
      ),
    );
  }
}
