import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 39.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGeneralSettings(context),
              SizedBox(height: 24.v),
              _buildPreferences(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      // height: 81.v,
      centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back),
      //   onPressed: () {
      //     onTapArrowleftone(context);
      //     Navigator.pop(context);
      //   },
      // ),
      title: Text(
        "Setting",
        style:
            theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert),
        )
      ],
      // styleType: Style.bgFill,
    );

    // CustomAppBar(
    //   height: 81.v,
    //   centerTitle: true,
    //   title: Column(
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.only(
    //           left: 13.h,
    //           right: 22.h,
    //         ),
    //         child: Row(
    //           children: [
    //             AppbarTitleImage(
    //               imagePath: ImageConstant.imgArrowLeftBlack900,
    //               onTap: () {
    //                 onTapArrowleftone(context);
    //               },
    //             ),
    //             AppbarSubtitle(
    //               text: "settings",
    //               margin: EdgeInsets.only(
    //                 left: 108.h,
    //                 top: 4.v,
    //                 bottom: 2.v,
    //               ),
    //             ),
    //             AppbarTitleImage(
    //               imagePath: ImageConstant.imgFlowbiteDotsV,
    //               margin: EdgeInsets.only(
    //                 left: 107.h,
    //                 top: 3.v,
    //                 bottom: 2.v,
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //       SizedBox(height: 32.v),
    //       SizedBox(
    //         width: 373.h,
    //         child: Divider(
    //           color: theme.colorScheme.secondaryContainer,
    //         ),
    //       )
    //     ],
    //   ),
    //   styleType: Style.bgFill,
    // );
  }

  /// Section Widget
  Widget _buildGeneralSettings(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 22.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "General",
              style: CustomTextStyles.titleMediumInter,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: _buildChangePassword(
              context,
              passwordImage: ImageConstant.imgIconamoonProfileFill,
              changePasswordText: "Profile",
              onTapArrowright: () {
                onTapArrowrightone(context);
              },
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: _buildChangePassword(
              context,
              passwordImage: ImageConstant.imgMdiPassword,
              changePasswordText: "Change password",
              onTapArrowright: () {
                onTapArrowright(context);
              },
            ),
          ),
          SizedBox(height: 15.v),
          _buildChangePassword(
            context,
            passwordImage: ImageConstant.imgMingcuteNotificationFill,
            changePasswordText: "Notification setting",
            onTapArrowright: () {
              onTapArrowrightfive(context);
            },
          ),
          SizedBox(height: 15.v),
          InkWell(
            onTap: () {
              onTapImgArrowright1(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcRoundLanguage,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 9.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "Language",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 93.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "Default",
                      style: CustomTextStyles.bodySmallInterBlack900,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 19.h),
                    onTap: () {
                      onTapImgArrowright1(context);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPreferences(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 22.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "Preferences",
              style: CustomTextStyles.titleMediumInter,
            ),
          ),
          SizedBox(height: 43.v),
          _buildChangePassword(
            context,
            passwordImage: ImageConstant.imgSearch,
            changePasswordText: "Legal & Policy",
            onTapArrowright: () {
              onTapArrowrightnine(context);
            },
          ),
          SizedBox(height: 15.v),
          _buildChangePassword(
            context,
            passwordImage: ImageConstant.imgWpfAskQuestion,
            changePasswordText: "Help and support",
            onTapArrowright: () {
              onTapArrowright1(context);
            },
          ),
          SizedBox(height: 15.v),
          _buildChangePassword(
            context,
            passwordImage: ImageConstant.imgClarityLogoutSolid,
            changePasswordText: "Log Out",
            onTapArrowright: () {
              onTapPasswordImage(context);
            },
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildChangePassword(
    BuildContext context, {
    required String passwordImage,
    required String changePasswordText,
    Function? onTapPasswordImage,
    Function? onTapArrowright,
  }) {
    return InkWell(
      onTap: () {
        onTapArrowright?.call();
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: passwordImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 5.h,
                top: 2.v,
              ),
              onTap: () {
                onTapPasswordImage?.call();
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                top: 7.v,
              ),
              child: Text(
                changePasswordText,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 92.h,
                top: 2.v,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapArrowrightone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  onTapArrowright(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePasswordScreen);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapArrowrightfive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }

  /// Navigates to the languagesScreen when the action is triggered.
  onTapImgArrowright1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.languagesScreen);
  }

  /// Navigates to the privacyStatementsScreen when the action is triggered.
  onTapArrowrightnine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.privacyStatementsScreen);
  }

  /// Navigates to the helpSupportScreen when the action is triggered.
  onTapArrowright1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.helpSupportScreen);
  }

  /// Navigates to the landingPageScreen when the action is triggered.
  onTapPasswordImage(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.loginPanelScreen,
      (Route<dynamic> route) => false,
    );
  }
}
