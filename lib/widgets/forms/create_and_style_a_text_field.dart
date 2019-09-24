import 'package:flutter/material.dart';

class CreateAndStyleATextField extends StatelessWidget {
  final String title;

  CreateAndStyleATextField({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter a search term'),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter your username'),
            ),
          ],
        ),
      ),
    );
  }
}
