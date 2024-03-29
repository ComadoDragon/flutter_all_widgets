import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/constants.dart';
import 'package:flutter_all_widgets/home_page.dart';
import 'package:flutter_all_widgets/widgets/design/add_a_drawer_to_a_screen.dart';
import 'package:flutter_all_widgets/widgets/design/display_a_snackbar.dart';
import 'package:flutter_all_widgets/widgets/forms/build_a_form_with_validation.dart';
import 'package:flutter_all_widgets/widgets/design/package_fonts.dart';
import 'package:flutter_all_widgets/widgets/design/update_the_ui_on_orientation.dart';
import 'package:flutter_all_widgets/widgets/design/use_a_custom_font.dart';
import 'package:flutter_all_widgets/widgets/design/use_themes_to_share_colors_and_font_styles.dart';
import 'package:flutter_all_widgets/widgets/design/work_with_tabs.dart';
import 'package:flutter_all_widgets/widgets/forms/create_and_style_a_text_field.dart';
import 'package:flutter_all_widgets/widgets/forms/focus_and_text_fields.dart';
import 'package:flutter_all_widgets/widgets/forms/handle_changes_to_a_text_field.dart';
import 'package:flutter_all_widgets/widgets/forms/retrieve_the_value_of_a_text_field.dart';
import 'package:flutter_all_widgets/widgets/gestures/add_material_touch_ripples.dart';
import 'package:flutter_all_widgets/widgets/gestures/handle_taps.dart';
import 'package:flutter_all_widgets/widgets/gestures/implement_swipe_to_dismiss.dart';
import 'package:flutter_all_widgets/widgets/images/display_images_from_the_internet.dart';
import 'package:flutter_all_widgets/widgets/images/fade_in_images_with_a_placeholder.dart';
import 'package:flutter_all_widgets/widgets/images/work_with_cached_images.dart';
import 'package:flutter_all_widgets/widgets/lists/create_a_grid_list.dart';
import 'package:flutter_all_widgets/widgets/lists/create_a_horizontal_list.dart';
import 'package:flutter_all_widgets/widgets/lists/create_lists_with_different_types_of_items.dart';
import 'package:flutter_all_widgets/widgets/lists/place_a_floating_app_bar_above_a_list.dart';
import 'package:flutter_all_widgets/widgets/lists/use_lists.dart';
import 'package:flutter_all_widgets/widgets/lists/work_with_long_lists.dart';
import 'package:flutter_all_widgets/widgets/navigation/animate_a_widget_across_screens.dart';
import 'package:flutter_all_widgets/widgets/navigation/navigate_to_a_new_screen_and_back.dart';
import 'package:flutter_all_widgets/widgets/navigation/navigate_with_named_routes.dart';
import 'package:flutter_all_widgets/widgets/navigation/return_data_from_a_screen.dart';
import 'package:flutter_all_widgets/widgets/navigation/send_data_to_a_new_screen.dart';
import 'package:flutter_all_widgets/widgets/networking/fetch_data_from_the_internet.dart';
import 'package:flutter_all_widgets/widgets/networking/make_authenticated_requests.dart';
import 'package:flutter_all_widgets/widgets/networking/parse_json_in_the_background.dart';
import 'package:flutter_all_widgets/widgets/networking/work_with_websockets.dart';

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
      case Constants.ROUTE_BUILD_A_FORM_WITH_VALIDATION:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => BuildAFormWithValidation(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_CREATE_AND_STYLE_A_TEXT_FIELD:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => CreateAndStyleATextField(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_FOCUS_AND_TEXT_FIELDS:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => FocusAndTextFields(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_HANDLE_CHANGES_TO_TEXT_FIELD:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => HandleChangesToATextField(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_RETRIEVE_THE_VALUE_OF_A_TEXT_FIELD:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => RetrieveTheValueOfATextField(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_ADD_MATERIAL_TOUCH_RIPPLES:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => AddMAterialTouchRipples(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_HANDLE_TAPS:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => HandleTaps(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_IMPLEMENT_SWIPE_TO_DISMISS:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => ImplementSwipeToDismiss(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_DISPLAY_IMAGES_FROM_THE_INTERNET:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => DisplayImagesFromTheInternet(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_FADE_IN_IMAGES_WITH_A_PLACEHOLDER:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => FadeInImagesWithAPlaceholder(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_WORK_WITH_CACHED_IMAGES:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => WorkWithCachedImages(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_CREATE_A_GRID_LIST:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => CreateAGridList(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_CREATE_A_HORIZONTAL_LIST:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => CreateAHorizontalList(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_CREATE_LISTS_WITH_DIFFERENT_TYPES_OF_ITEMS:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => CreateListsWithDifferentTypesOfItems(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_PLACE_A_FLOATING_APP_BAR_ABOVE_A_LIST:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => PlaceAFloatingAppBarAboveAList(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_USE_LISTS:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => UseLists(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_WORK_WITH_LONG_LISTS:
    // Validation of correct data type
      if (args is String) {
        return MaterialPageRoute(
          builder: (_) => WorkWithLongLists(
            title: args,
          ),
        );
      }
      return _errorRoute();
      case Constants.ROUTE_ANIMATE_A_WIDGET_ACROSS_SCREENS:
    // Validation of correct data type
      if (args is String) {
        return MaterialPageRoute(
          builder: (_) => AnimateAWidgetAcrossScreens(
            title: args,
          ),
        );
      }
      return _errorRoute();
      case Constants.ROUTE_NAVIGATE_TO_A_NEW_SCREEN_AND_BACK:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => NavigateToANewScreenAndBack(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_NAVIGATE_WITH_NAMED_ROUTES:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => NavigateWithNamedRoutes(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case "/second":
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondScreenToNavigateWithNamedRoutes(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_RETURN_DATA_FROM_A_SCREEN:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => ReturnDataFromAScreen(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_SEND_DATA_TO_A_NEW_SCREEN:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SendDataToANewScreen(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_FETCH_DATA_FROM_THE_INTERNET:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => FetchDataFromTheInternet(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_MAKE_AUTHENTICATED_REQUESTS:
    // Validation of correct data type
      if (args is String) {
        return MaterialPageRoute(
          builder: (_) => MakeAuthenticatedRequests(
            title: args,
          ),
        );
      }
      return _errorRoute();
      case Constants.ROUTE_PARSE_JSON_IN_THE_BACKGROUND:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => ParseJsonInTheBackground(
              title: args,
            ),
          );
        }
        return _errorRoute();
      case Constants.ROUTE_WORK_WITH_WEBSOCKETS:
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => WorkWithWebSocketsMain(
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