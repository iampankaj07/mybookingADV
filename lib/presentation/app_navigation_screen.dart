import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'verify_success_panel_bottomsheet.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnPrimaryContainer,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search_page - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchPageContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Landing_page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.landingPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login_Panel",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPanelScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup_panel",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupPanelScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "verify_success_panel - BottomSheet",
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context, VerifySuccessPanelBottomsheet()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Privacy Statements",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyStatementsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Help & Support",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpSupportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Setting",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit_Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Change_Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Languages",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.languagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Place",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchPlaceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Seclect Date",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.seclectDateScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Flight Results - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.flightResultsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Passenger",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addPassengerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Overview",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.overviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirm",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.confirmScreen),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
