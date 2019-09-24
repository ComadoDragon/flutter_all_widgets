import 'package:flutter/material.dart';

class DisplayImagesFromTheInternet extends StatelessWidget {

  final String title;

  DisplayImagesFromTheInternet({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Image.network(
        'https://picsum.photos/250?image=9',
      ),
    );
  }
}
