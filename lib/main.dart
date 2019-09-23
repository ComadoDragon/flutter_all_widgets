import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/constants.dart';
import 'package:flutter_all_widgets/route_generator.dart';
import 'package:flutter_all_widgets/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter All Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Constants.ROUTE_HOMEPAGE,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
