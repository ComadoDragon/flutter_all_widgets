
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
    menuList.add(new MainMenu(8, Constants.ROUTE_BUILD_A_FORM_WITH_VALIDATION, "Build a form with validation"));
    menuList.add(new MainMenu(9, Constants.ROUTE_CREATE_AND_STYLE_A_TEXT_FIELD, "Create and style a text field"));
    menuList.add(new MainMenu(10, Constants.ROUTE_FOCUS_AND_TEXT_FIELDS, "Focus and text fields"));
    menuList.add(new MainMenu(11, Constants.ROUTE_HANDLE_CHANGES_TO_TEXT_FIELD, "Handle changes to a text field"));
    menuList.add(new MainMenu(12, Constants.ROUTE_RETRIEVE_THE_VALUE_OF_A_TEXT_FIELD, "Retrieve the value of a text field"));
    menuList.add(new MainMenu(13, Constants.ROUTE_ADD_MATERIAL_TOUCH_RIPPLES, "Add Material touch ripples"));
    menuList.add(new MainMenu(14, Constants.ROUTE_HANDLE_TAPS, "Handle taps"));
    menuList.add(new MainMenu(15, Constants.ROUTE_IMPLEMENT_SWIPE_TO_DISMISS, "Implement swipe to dismiss"));
    menuList.add(new MainMenu(16, Constants.ROUTE_DISPLAY_IMAGES_FROM_THE_INTERNET, "Display images from the internet"));
    menuList.add(new MainMenu(17, Constants.ROUTE_FADE_IN_IMAGES_WITH_A_PLACEHOLDER, "Fade in images with a placeholder"));
    menuList.add(new MainMenu(18, Constants.ROUTE_WORK_WITH_CACHED_IMAGES, "Work with cached images"));

    return menuList;
  }

}