import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController flightdelayvaluController = TextEditingController();

  TextEditingController changegatevalueController = TextEditingController();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 19.v,
          ),
          child: Column(
            children: [
              Divider(
                color: theme.colorScheme.secondaryContainer,
              ),
              SizedBox(height: 39.v),
              _buildColumnFlightDel(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 61.v,
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlack900,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 13.v,
          bottom: 13.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Notification",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFlowbiteDotsV,
          margin: EdgeInsets.fromLTRB(33.h, 16.v, 33.h, 15.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnFlightDel(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 13.h,
        right: 16.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 5.h,
            ),
            child: CustomTextFormField(
              controller: flightdelayvaluController,
              hintText: "Flight Delay",
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 7.v, 9.h, 7.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorBlack900,
                  height: 15.v,
                  width: 27.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 34.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 2.h,
                top: 6.v,
                bottom: 6.v,
              ),
              borderDecoration:
                  TextFormFieldStyleHelper.underLineSecondaryContainer,
            ),
          ),
          SizedBox(height: 25.v),
          SizedBox(
            height: 38.v,
            width: 294.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomTextFormField(
                  width: 294.h,
                  controller: changegatevalueController,
                  hintText: "Change Gate",
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.bottomCenter,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 1.v, 9.h, 1.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorBlack900,
                      height: 15.v,
                      width: 27.h,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 31.v,
                  ),
                  contentPadding: EdgeInsets.only(left: 2.h),
                  borderDecoration:
                      TextFormFieldStyleHelper.underLineSecondaryContainer,
                ),
                CustomSwitch(
                  margin: EdgeInsets.only(right: 8.h),
                  alignment: Alignment.topRight,
                  value: isSelectedSwitch,
                  onChange: (value) {
                    isSelectedSwitch = value;
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Flight Cancellation",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                CustomSwitch(
                  value: isSelectedSwitch1,
                  onChange: (value) {
                    isSelectedSwitch1 = value;
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              color: theme.colorScheme.secondaryContainer,
              indent: 20.h,
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "Schedule",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                CustomSwitch(
                  value: isSelectedSwitch2,
                  onChange: (value) {
                    isSelectedSwitch2 = value;
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              color: theme.colorScheme.secondaryContainer,
              indent: 20.h,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Text(
                    "Payment",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                CustomSwitch(
                  value: isSelectedSwitch3,
                  onChange: (value) {
                    isSelectedSwitch3 = value;
                  },
                )
              ],
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
}
