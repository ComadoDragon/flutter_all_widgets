import 'package:flutter/material.dart';

class AddMAterialTouchRipples extends StatelessWidget {

  final String title;

  AddMAterialTouchRipples({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: InkWell(
          // When the user taps the button, show a snackbar.
          onTap: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Tap'),
            ));
          },
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Text('Flat Button'),
          ),
        ),
      ),
    );
  }
}
