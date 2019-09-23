
import 'package:flutter_all_widgets/constants.dart';

class MainMenu {
  int _rowNumber;
  String _route;
  String _title;


  MainMenu(
      this._rowNumber,
      this._route,
      this._title,
      );

  // Get
  int get rowNumber => _rowNumber;
  String get route => _route;
  String get title => _title;

  static List<MainMenu> allMenu()
  {
    var menuList = new List<MainMenu>();

    menuList.add(new MainMenu(1, Constants.ROUTE_ADD_A_DRAWER_TO_A_SCREEN, "Add a Drawer to a screen"));
    menuList.add(new MainMenu(2, Constants.ROUTE_DISPLAY_A_SNACKBAR, "Display a snackbar"));
    menuList.add(new MainMenu(3, Constants.ROUTE_PACKAGE_FONTS, "Package Fonts"));
    menuList.add(new MainMenu(4, Constants.ROUTE_UPDATE_THE_UI_ON_ORIENTATION, "Update the UI based on orientation"));
    menuList.add(new MainMenu(5, Constants.ROUTE_USE_A_CUSTOM_FONT, "Use a custom font"));
    menuList.add(new MainMenu(6, Constants.ROUTE_USE_THEMES_TO_SHARE_COLORS_AND_FONT_STYLES, "Use themes to share colors and font styles"));
    menuList.add(new MainMenu(7, Constants.ROUTE_WORK_WITH_TABS, "Work with tabs"));

    return menuList;
  }

}