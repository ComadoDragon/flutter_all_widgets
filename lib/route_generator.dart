import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/constants.dart';
import 'package:flutter_all_widgets/home_page.dart';
import 'package:flutter_all_widgets/widgets/add_a_drawer_to_a_screen.dart';
import 'package:flutter_all_widgets/widgets/display_a_snackbar.dart';
import 'package:flutter_all_widgets/widgets/package_fonts.dart';
import 'package:flutter_all_widgets/widgets/update_the_ui_on_orientation.dart';
import 'package:flutter_all_widgets/widgets/use_a_custom_font.dart';
import 'package:flutter_all_widgets/widgets/use_themes_to_share_colors_and_font_styles.dart';
import 'package:flutter_all_widgets/widgets/work_with_tabs.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case Constants.ROUTE_HOMEPAGE:
        return MaterialPageRoute(builder: (_) => HomePage());
      case Constants.ROUTE_ADD_A_DRAWER_TO_A_SCREEN:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => AddADrawerToAScreen(
              title: args,
            ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      case Constants.ROUTE_DISPLAY_A_SNACKBAR:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => DisplayASnackbar(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_PACKAGE_FONTS:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => PackageFonts(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_UPDATE_THE_UI_ON_ORIENTATION:
    // Validation of correct data type
      if (args is String) {
        return MaterialPageRoute(
          builder: (_) => UpdateTheUiOnOrientation(
            title: args,
          ),
        );
      }
      return _errorRoute();
      case Constants.ROUTE_USE_A_CUSTOM_FONT:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => UseACustomFont(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_USE_THEMES_TO_SHARE_COLORS_AND_FONT_STYLES:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => UseThemesToShareColorsAndFontStyles(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_WORK_WITH_TABS:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => WorkWithTabs(
              title: args,
            ),
          );
        }
        return _errorRoute();
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}