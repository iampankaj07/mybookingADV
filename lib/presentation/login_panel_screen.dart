import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginPanelScreen extends StatefulWidget {
  LoginPanelScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<LoginPanelScreen> createState() => _LoginPanelScreenState();
}

class _LoginPanelScreenState extends State<LoginPanelScreen> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStackUnsplash(context),
              SizedBox(height: 26.v),
              _buildColumnUsernameO(context),
              SizedBox(height: 23.v),
              _buildColumnPassword(context),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 57.h),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Forget Password ?",
                    style: CustomTextStyles.bodyLargeLight,
                  ),
                ),
              ),
              SizedBox(height: 41.v),
              CustomOutlinedButton(
                text: "Login",
                onPressed: () {
                  if (userNameController.text == "test@gmail.com" &&
                      passwordController.text == "test123") {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.homeScreen,
                      (Route<dynamic> route) => false,
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text('Invalid credentials')),
                    );
                  }
                },
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 43.h,
                ),
              ),
              SizedBox(height: 26.v),
              Container(
                margin: EdgeInsets.only(left: 176.h),
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "or",
                  style: CustomTextStyles.bodyLargeLight,
                ),
              ),
              SizedBox(height: 41.v),
              CustomOutlinedButton(
                text: "Sign Up",
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 43.h,
                ),
                buttonStyle: CustomButtonStyles.outlineBlackTL15,
                onPressed: () {
                  onTapSignup(context);
                },
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackUnsplash(BuildContext context) {
    return SizedBox(
      height: 245.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplash9aqidzec9py,
            height: 245.v,
            width: 393.h,
            radius: BorderRadius.vertical(
              bottom: Radius.circular(18.h),
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 80.h,
                top: 47.v,
                right: 89.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 60.h),
                    child: Text(
                      "Log in",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Text(
                    "MyBookingADV",
                    style: theme.textTheme.headlineLarge,
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
  Widget _buildColumnUsernameO(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "Username or Email",
              style: CustomTextStyles.titleLargeInter,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: CustomTextFormField(
              controller: userNameController,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnPassword(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "Password",
              style: CustomTextStyles.titleLargeInter,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: CustomTextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              suffix: InkWell(
                onTap: () {
                  setState(() {
                    obsecure = !obsecure;
                  });
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 8.v, 10.h, 7.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPheyeclosed,
                    height: 30.v,
                    width: 35.h,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 45.v,
              ),
              obscureText: obsecure,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the signupPanelScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupPanelScreen);
  }
}
