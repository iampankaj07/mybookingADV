import 'package:flutter/material.dart';
import 'package:mybookingadv/presentation/add_passenger_screen.dart';
import 'package:mybookingadv/presentation/app_navigation_screen.dart';
import 'package:mybookingadv/presentation/change_password_screen.dart';
import 'package:mybookingadv/presentation/confirm_screen.dart';
import 'package:mybookingadv/presentation/edit_profile_screen.dart';
import 'package:mybookingadv/presentation/flight_results_page.dart';
import 'package:mybookingadv/presentation/flight_results_tab_container_screen.dart';
import 'package:mybookingadv/presentation/help_support_screen.dart';
import 'package:mybookingadv/presentation/home_screen.dart';
import 'package:mybookingadv/presentation/landing_page_screen.dart';
import 'package:mybookingadv/presentation/languages_screen.dart';
import 'package:mybookingadv/presentation/login_panel_screen.dart';
import 'package:mybookingadv/presentation/notification_screen.dart';
import 'package:mybookingadv/presentation/overview_screen.dart';
import 'package:mybookingadv/presentation/payment_screen.dart';
import 'package:mybookingadv/presentation/privacy_statements_screen.dart';
import 'package:mybookingadv/presentation/search_page_container_screen.dart';
import 'package:mybookingadv/presentation/search_place_screen.dart';
import 'package:mybookingadv/presentation/seclect_date_screen.dart';
import 'package:mybookingadv/presentation/setting_screen.dart';
import 'package:mybookingadv/presentation/signup_panel_screen.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String searchPageContainerScreen =
      '/search_page_container_screen';

  static const String searchPageContainer1Page = '/search_page_container1_page';

  static const String landingPageScreen = '/landing_page_screen';

  static const String loginPanelScreen = '/login_panel_screen';

  static const String signupPanelScreen = '/signup_panel_screen';

  static const String privacyStatementsScreen = '/privacy_statements_screen';

  static const String helpSupportScreen = '/help_support_screen';

  static const String settingScreen = '/setting_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String notificationScreen = '/notification_screen';

  static const String languagesScreen = '/languages_screen';

  static const String homeScreen = '/home_screen';

  static const String searchPlaceScreen = '/search_place_screen';

  static const String seclectDateScreen = '/seclect_date_screen';

  static const String flightResultsPage = '/flight_results_page';

  static const String flightResultsTabContainerScreen =
      '/flight_results_tab_container_screen';

  static const String addPassengerScreen = '/add_passenger_screen';

  static const String overviewScreen = '/overview_screen';

  static const String paymentScreen = '/payment_screen';

  static const String confirmScreen = '/confirm_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    searchPageContainerScreen: (context) => SearchPageContainerScreen(),
    landingPageScreen: (context) => LandingPageScreen(),
    loginPanelScreen: (context) => LoginPanelScreen(),
    signupPanelScreen: (context) => SignupPanelScreen(),
    privacyStatementsScreen: (context) => PrivacyStatementsScreen(),
    helpSupportScreen: (context) => HelpSupportScreen(),
    settingScreen: (context) => SettingScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    notificationScreen: (context) => NotificationScreen(),
    languagesScreen: (context) => LanguagesScreen(),
    homeScreen: (context) => HomeScreen(),
    searchPlaceScreen: (context) => SearchPlaceScreen(),
    seclectDateScreen: (context) => SeclectDateScreen(),
    flightResultsPage: (context) => FlightResultsPage(),
    flightResultsTabContainerScreen: (context) =>
        FlightResultsTabContainerScreen(),
    addPassengerScreen: (context) => AddPassengerScreen(),
    overviewScreen: (context) => OverviewScreen(),
    paymentScreen: (context) => PaymentScreen(),
    confirmScreen: (context) => ConfirmScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LandingPageScreen()
  };
}
