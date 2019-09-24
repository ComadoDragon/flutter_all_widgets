import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class WorkWithCachedImages extends StatelessWidget {

  final String title;

  WorkWithCachedImages({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: CachedNetworkImage(
          placeholder: (context, url) => CircularProgressIndicator(),
          imageUrl:
          'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
