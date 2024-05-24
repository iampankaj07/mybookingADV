import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/customtextfieln_noborder.dart';
import 'widgets/viewhierarchy_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddPassengerScreen extends StatelessWidget {
  AddPassengerScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController surnameEditTextController = TextEditingController();

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController settingsController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController countryEditTextController = TextEditingController();

  TextEditingController passportEditTextController = TextEditingController();

  TextEditingController idNumberEditTextController = TextEditingController();

  bool medicalexpanses = false;

  bool checkmark = false;

  bool assistanceservi = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            // width: 375.h,
            child: Column(
              children: [
                _buildAppBar(context),
                SizedBox(height: 24.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Column(
                        children: [
                          _buildPassengerColumn(context),
                          SizedBox(height: 16.v),
                          _buildTravelColumn(context),
                          SizedBox(height: 16.v),
                          _buildBagsColumn(context)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
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
        "Add Passenger",
        style:
            theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "Done",
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.overviewScreen);
          },
          margin: EdgeInsets.fromLTRB(17.h, 9.v, 17.h, 14.v),
        )
      ],
      // styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSurnameEditText(BuildContext context) {
    return CustomTextFormFieldNoB(
      controller: surnameEditTextController,
      hintText: "John",
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return CustomTextFormFieldNoB(
      controller: nameEditTextController,
      hintText: "eg. mid",
    );
  }

  /// Section Widget
  Widget _buildGivenNameColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Given name",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 11.v),
        CustomTextFormFieldNoB(
          controller: nameController,
          hintText: "eg. Dae",
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildGenderColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gender",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormFieldNoB(
          width: 163.h,
          controller: settingsController,
          hintText: "Famale",
          prefix: Container(
            margin: EdgeInsets.only(
              left: 1.h,
              right: 11.h,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgSettingsGray400,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 28.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 1.v,
            right: 28.h,
            bottom: 1.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildGenderRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildGenderColumn(context),
        Padding(
          padding: EdgeInsets.only(top: 21.v),
          child: CustomTextFormFieldNoB(
            width: 163.h,
            controller: genderController,
            hintText: "Male",
            prefix: Container(
              margin: EdgeInsets.only(right: 12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgShape,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 28.v,
            ),
            contentPadding: EdgeInsets.only(
              top: 1.v,
              right: 28.h,
              bottom: 1.v,
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Date of birth",
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 11.v),
        CustomTextFormFieldNoB(
          controller: dateOfBirthController,
          hintText: "Pick your date of birth",
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCountryEditText(BuildContext context) {
    return CustomTextFormFieldNoB(
      controller: countryEditTextController,
      hintText: "Select a Country or Region",
    );
  }

  /// Section Widget
  Widget _buildPassportEditText(BuildContext context) {
    return CustomTextFormFieldNoB(
      controller: passportEditTextController,
      hintText: "Passport",
      hintStyle: CustomTextStyles.bodyMediumBlack900,
      contentPadding: EdgeInsets.symmetric(vertical: 2.v),
    );
  }

  /// Section Widget
  Widget _buildIdNumberEditText(BuildContext context) {
    return CustomTextFormFieldNoB(
      controller: idNumberEditTextController,
      hintText: "Number of Passport or ID",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.number,
    );
  }

  /// Section Widget
  Widget _buildPassengerColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "Passenger details",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 14.v),
          Divider(
            color: appTheme.blueGray50,
          ),
          SizedBox(height: 14.v),
          Text(
            "Surname",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 9.v),
          _buildSurnameEditText(context),
          SizedBox(height: 14.v),
          Text(
            "Middle name",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 11.v),
          _buildNameEditText(context),
          SizedBox(height: 14.v),
          _buildGivenNameColumn(context),
          SizedBox(height: 14.v),
          _buildGenderRow(context),
          SizedBox(height: 14.v),
          _buildDateOfBirthColumn(context),
          SizedBox(height: 14.v),
          Text(
            "Nationality",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 10.v),
          _buildCountryEditText(context),
          SizedBox(height: 16.v),
          Text(
            "ID type",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 8.v),
          _buildPassportEditText(context),
          SizedBox(height: 15.v),
          Text(
            "ID number (optional)",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 10.v),
          _buildIdNumberEditText(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTravelColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Travel insurance",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.blueGray50,
          ),
          SizedBox(height: 17.v),
          SizedBox(
            height: 265.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 15.v,
                    ),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 39.v),
                        CustomCheckboxButton(
                          text: "Medical expanses",
                          value: medicalexpanses,
                          onChange: (value) {
                            medicalexpanses = value;
                          },
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(right: 34.h),
                          child: CustomCheckboxButton(
                            text:
                                "Trip cancellation (illnesss, accident, death)",
                            value: checkmark,
                            onChange: (value) {
                              checkmark = value;
                            },
                          ),
                        ),
                        SizedBox(height: 16.v),
                        CustomCheckboxButton(
                          text: "Assistance services",
                          value: assistanceservi,
                          onChange: (value) {
                            assistanceservi = value;
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 108.v),
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    decoration: AppDecoration.outlineBluegray50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 29.v,
                            bottom: 24.v,
                          ),
                          child: Column(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgCloseOrange400,
                                height: 39.v,
                                width: 32.h,
                              ),
                              SizedBox(height: 8.v),
                              Text(
                                "Travel Plus",
                                style: CustomTextStyles.labelLargeBlack,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "\$33,60",
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer12,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 26.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 18.h,
                            vertical: 24.v,
                          ),
                          decoration: AppDecoration.outlineBlack9002,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgUserBlue800,
                                height: 39.v,
                                width: 32.h,
                              ),
                              SizedBox(height: 8.v),
                              Text(
                                "Travel Basic",
                                style: CustomTextStyles.labelLargeBlack,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "\$15,45",
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer12,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 29.v,
                            bottom: 24.v,
                          ),
                          child: Column(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgContrastGray400,
                                height: 39.v,
                                width: 32.h,
                              ),
                              SizedBox(height: 8.v),
                              Text(
                                "No insurance",
                                style: CustomTextStyles.labelLargeBlack,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "Free",
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer12,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBagsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bags",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.blueGray50,
          ),
          SizedBox(height: 11.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return ViewhierarchyItemWidget();
            },
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
