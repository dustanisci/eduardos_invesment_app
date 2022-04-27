import 'package:flutter/material.dart';
import '../menu/menu.dart';

class BaseScaffold extends StatelessWidget {
  Widget body;
  String title;

  BaseScaffold({
    Key key,
    this.title,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Menu(),
      body: body,
    );
  }
}
