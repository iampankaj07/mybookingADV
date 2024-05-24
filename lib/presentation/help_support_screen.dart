import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppBar(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 24.v,
                ),
                child: Column(
                  children: [
                    _buildServiceChatRow(context),
                    SizedBox(height: 16.v),
                    _buildEmailUsRow(context),
                    SizedBox(height: 16.v),
                    _buildCallColumn(context),
                    SizedBox(height: 17.v),
                    _buildFaqRow(context),
                    SizedBox(height: 5.v)
                  ],
                ),
              )
            ],
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
        "Customer Support",
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
  Widget _buildServiceChatRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Service Chat",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  "7:00 - 21:00 (GTM+8), 7 Days a Week",
                  style: CustomTextStyles.bodySmall12,
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 36.v,
            width: 35.h,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 11.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailUsRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email Us",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                "support@mybookingadv.com",
                style: CustomTextStyles.bodySmall12,
              )
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTelevision,
            height: 31.v,
            width: 34.h,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 12.h,
              bottom: 5.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCallColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: _buildVietnamRow(
              context,
              dynamicText1: "United State",
              dynamicText2: "+1 202 844 4159",
              dynamicText3: "Support available in English 24/7",
            ),
          ),
          SizedBox(height: 20.v),
          Divider(
            color: appTheme.blueGray50,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: _buildVietnamRow(
              context,
              dynamicText1: "Vietnam",
              dynamicText2: "+84 444583392",
              dynamicText3: "Support available in English 24/7",
            ),
          ),
          SizedBox(height: 25.v),
          Divider(
            color: appTheme.blueGray50,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Other countries and regions",
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrow,
                  height: 13.v,
                  width: 8.h,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFaqRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              "FAQ",
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrow,
            height: 32.adaptSize,
            width: 32.adaptSize,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildVietnamRow(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                dynamicText1,
                style: CustomTextStyles.bodySmall12.copyWith(
                  color: theme.colorScheme.primaryContainer,
                ),
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                dynamicText2,
                style: CustomTextStyles.bodyMediumBlack900.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              dynamicText3,
              style: CustomTextStyles.bodySmall12.copyWith(
                color: theme.colorScheme.primaryContainer,
              ),
            )
          ],
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCall,
          height: 32.adaptSize,
          width: 32.adaptSize,
          margin: EdgeInsets.only(
            top: 13.v,
            bottom: 10.v,
          ),
        )
      ],
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
