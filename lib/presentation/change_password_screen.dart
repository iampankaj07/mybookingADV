import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: SizeUtils.height,
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 32.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 65.v,
                      width: 68.h,
                      margin: EdgeInsets.only(left: 126.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder34,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    SizedBox(height: 43.v),
                    _buildCurrentPasswordColumn(context),
                    SizedBox(height: 21.v),
                    _buildNewPasswordColumn(context),
                    SizedBox(height: 21.v),
                    _buildConfirmPasswordColumn(context),
                    Spacer(),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      text: "Save Changes",
                      margin: EdgeInsets.only(right: 27.h),
                      buttonTextStyle: theme.textTheme.bodyLarge!,
                    )
                  ],
                ),
              ),
            ),
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
        "Change Password",
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
  }

  /// Section Widget
  Widget _buildCurrentPasswordColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Current Password",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 19.v),
          CustomTextFormField(
            controller: passwordController,
            hintText: "********",
            hintStyle: CustomTextStyles.bodyLargeThin,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 12.v, 30.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIcbaselinelock,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 9.v, 16.h, 9.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgPheyeclosed,
                height: 30.v,
                width: 35.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(vertical: 14.v),
            borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
            filled: true,
            fillColor: appTheme.blueGray10001,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPasswordColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New Password",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 17.v),
          CustomTextFormField(
            controller: newpasswordController,
            hintText: "********",
            hintStyle: CustomTextStyles.bodyLargeThin,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 14.v, 30.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIcbaselinelock,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 11.v, 16.h, 7.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgPheyeclosed,
                height: 30.v,
                width: 35.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(vertical: 14.v),
            borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
            filled: true,
            fillColor: appTheme.blueGray10001,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Confirm Password",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 18.v),
          CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "********",
            hintStyle: CustomTextStyles.bodyLargeThin,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 12.v, 30.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIcbaselinelock,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 9.v, 16.h, 9.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgPheyeclosed,
                height: 30.v,
                width: 35.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(vertical: 14.v),
            borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
            filled: true,
            fillColor: appTheme.blueGray10001,
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
