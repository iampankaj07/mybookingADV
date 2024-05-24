import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'search_page_container1_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SearchPlaceScreen extends StatelessWidget {
  SearchPlaceScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: _buildAppBar(context),
        body: Container(
          width: 399.h,
          padding: EdgeInsets.symmetric(vertical: 9.v),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                padding: EdgeInsets.symmetric(vertical: 11.v),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSearchView(
                      controller: searchController,
                      hintText: "Search",
                    ),
                    SizedBox(height: 36.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "RECENT",
                        style: CustomTextStyles.titleMediumPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "Vietnam, HAN",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "NEAR BY SYDNEY",
                        style: CustomTextStyles.titleMediumPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "London, United Kingdom (6 airports)",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "New York City, New York (3 airports)",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "Chicago, Illinois (3 airports)",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "Hanoi, Vietnam (3 airports)",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 47.v)
                  ],
                ),
              ),
              Spacer()
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 16.v,
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCloseGray400,
          margin: EdgeInsets.symmetric(horizontal: 36.h),
        )
      ],
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
