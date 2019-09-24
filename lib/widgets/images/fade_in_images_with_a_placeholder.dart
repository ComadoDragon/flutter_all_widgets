import 'package:flutter/material.dart';

class FadeInImagesWithAPlaceholder extends StatelessWidget {

  final String title;

  FadeInImagesWithAPlaceholder({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/loading.gif',
          image: 'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
