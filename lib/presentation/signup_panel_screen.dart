import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'verify_success_panel_bottomsheet.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignupPanelScreen extends StatelessWidget {
  SignupPanelScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController edittextController = TextEditingController();

  TextEditingController edittextoneController = TextEditingController();

  TextEditingController pheyeclosedController = TextEditingController();

  TextEditingController pheyeclosedoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 808.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle17,
                height: 800.v,
                width: 393.h,
                radius: BorderRadius.circular(
                  19.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAppBar(context),
                      SizedBox(height: 34.v),
                      Padding(
                        padding: EdgeInsets.only(left: 62.h),
                        child: Text(
                          "MyBookingADV",
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 33.v),
                      _buildFullNameColumn(context),
                      SizedBox(height: 14.v),
                      _buildEmailOrPhoneColumn(context),
                      SizedBox(height: 17.v),
                      _buildPasswordColumn(context),
                      SizedBox(height: 11.v),
                      _buildConfirmColumn(context),
                      SizedBox(height: 26.v),
                      CustomOutlinedButton(
                        text: "Sign Up",
                        margin: EdgeInsets.only(
                          left: 4.h,
                          right: 54.h,
                        ),
                        onPressed: () {
                          onTapSignup(context);
                        },
                      ),
                      SizedBox(height: 26.v),
                      Container(
                        margin: EdgeInsets.only(left: 165.h),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "or",
                          style: CustomTextStyles.bodyLargeLight,
                        ),
                      ),
                      SizedBox(height: 26.v),
                      Padding(
                        padding: EdgeInsets.only(left: 73.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFlatColorIconsGoogle,
                              height: 36.v,
                              width: 34.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                onTapTxtSignupusing(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 13.h,
                                  top: 7.v,
                                  bottom: 7.v,
                                ),
                                child: Text(
                                  "Sign Up using Google",
                                  style: CustomTextStyles.bodyLarge17,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 26.v)
                    ],
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 31.v,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 18.h,
          bottom: 1.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      title: AppbarTitle(
        text: "Sign up",
        margin: EdgeInsets.only(left: 11.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Full Name",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(right: 46.h),
            child: CustomTextFormField(
              controller: edittextController,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailOrPhoneColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Email or Phone No",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 46.h),
            child: CustomTextFormField(
              controller: edittextoneController,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Password",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(right: 46.h),
            child: CustomTextFormField(
              controller: pheyeclosedController,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 8.v, 10.h, 7.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgPheyeclosed,
                  height: 30.v,
                  width: 35.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 45.v,
              ),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Confirm password",
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 46.h),
            child: CustomTextFormField(
              controller: pheyeclosedoneController,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 8.v, 7.h, 7.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgPheyeclosed,
                  height: 30.v,
                  width: 35.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 45.v,
              ),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Shows a modal bottom sheet with [VerifySuccessPanelBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapSignup(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => VerifySuccessPanelBottomsheet(),
        isScrollControlled: true);
  }

  /// Shows a modal bottom sheet with [VerifySuccessPanelBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapTxtSignupusing(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => VerifySuccessPanelBottomsheet(),
        isScrollControlled: true);
  }
}
