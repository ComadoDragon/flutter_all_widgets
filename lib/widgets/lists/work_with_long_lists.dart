import 'package:flutter/material.dart';

class WorkWithLongLists extends StatelessWidget {

  final String title;
  final List<String> items = List<String>.generate(10000, (i) => "Item $i");

  WorkWithLongLists({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}