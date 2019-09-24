import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/constants.dart';
import 'package:flutter_all_widgets/home_page.dart';
import 'package:flutter_all_widgets/widgets/design/add_a_drawer_to_a_screen.dart';

class Routes {
  static final routes = <String, WidgetBuilder> {
      Constants.ROUTE_HOMEPAGE : (BuildContext context) => HomePage(),
  };
}