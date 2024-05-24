import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

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
                    _buildUsernameColumn(context),
                    SizedBox(height: 21.v),
                    _buildEmailColumn(context),
                    SizedBox(height: 21.v),
                    _buildPhoneNumberColumn(context),
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
      flexibleSpace: Container(
        height: 2,
        width: 373.h,
        margin: EdgeInsets.only(
          left: 9.82.h,
          top: 80.5.v,
          right: 10.179993.h,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.secondaryContainer,
        ),
      ),
      title: Text(
        "Profile",
        style:
            theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500),
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
  Widget _buildUsernameColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "UserName",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 19.v),
          CustomTextFormField(
            controller: userNameController,
            hintText: "rabbin@gmail.com",
            textInputType: TextInputType.emailAddress,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 12.v, 20.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconamoonProfileFill,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
            filled: true,
            fillColor: appTheme.blueGray10001,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 17.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "rabbin@gmail.com",
            textInputType: TextInputType.emailAddress,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 14.v, 20.h, 10.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgMaterialsymbolsmail,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
            filled: true,
            fillColor: appTheme.blueGray10001,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone Number",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 18.v),
          CustomTextFormField(
            controller: phoneNumberController,
            hintText: "+61 0123 456 789",
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 12.v, 20.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgAntdesignmobileoutlined,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
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
