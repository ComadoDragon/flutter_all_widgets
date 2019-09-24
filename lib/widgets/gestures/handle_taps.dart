import 'package:flutter/material.dart';

class HandleTaps extends StatelessWidget {

  final String title;

  HandleTaps({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: GestureDetector(
          // When the child is tapped, show a snackbar.
          onTap: () {
            final snackBar = SnackBar(content: Text("Tap"));

            Scaffold.of(context).showSnackBar(snackBar);
          },
          // The custom button
          child: Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Theme.of(context).buttonColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text('My Button'),
          ),
        ),
      ),
    );
  }
}
