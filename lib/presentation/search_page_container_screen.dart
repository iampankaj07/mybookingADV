import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'search_page_container1_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SearchPageContainerScreen extends StatelessWidget {
  SearchPageContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.searchPageContainer1Page,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Humbleiconsarrowgoback:
        return AppRoutes.searchPageContainer1Page;
      case BottomBarEnum.Fluentshiftsa:
        return "/";
      case BottomBarEnum.Materialsymbolshomeoutline:
        return "/";
      case BottomBarEnum.Basilnotificationonoutline:
        return "/";
      case BottomBarEnum.Phuserbold:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.searchPageContainer1Page:
        return SearchPageContainer1Page();
      default:
        return DefaultWidget();
    }
  }
}
