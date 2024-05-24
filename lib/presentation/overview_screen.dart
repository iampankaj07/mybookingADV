import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/userprofile_item_widget.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(context),
        body: SizedBox(
          // width: 375.h,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFlightStackView(context),
                        SizedBox(height: 16.v),
                        Text(
                          "Passengers",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 18.v),
                        _buildUserProfile(context),
                        SizedBox(height: 18.v),
                        _buildUserProfile2(context)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildCheckoutColumn(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: 21.h,
      // leading: AppbarLeadingImage(
      //   imagePath: ImageConstant.imgArrowLeft,
      //   margin: EdgeInsets.only(
      //     left: 9.h,
      //     top: 11.v,
      //     bottom: 11.v,
      //   ),
      //   onTap: () {
      //     onTapArrowleftone(context);
      //   },
      // ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "Overview",
      ),
      // styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildFlightStackView(BuildContext context) {
    return SizedBox(
      // height: 250.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 176.v,
              width: 343.h,
              margin: EdgeInsets.only(top: 2.v),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.06),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      2,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
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
                                "HAN",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "Hanoi",
                              style: theme.textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup2,
                              height: 25.v,
                              width: 145.h,
                            ),
                            Text(
                              "1 stop",
                              style: theme.textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "SYD",
                            style: theme.textTheme.titleLarge,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "Singapore",
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      right: 2.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mar 20, 9:35",
                          style: CustomTextStyles.bodySmallPrimaryContainer12,
                        ),
                        Text(
                          "12h30m",
                          style: theme.textTheme.bodySmall,
                        ),
                        Text(
                          "Mar 20, 17:35",
                          style: CustomTextStyles.bodySmallPrimaryContainer12,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Divider(
                    color: appTheme.gray300,
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: _buildFlightDetailsOne(
                      context,
                      airlineName: "Vietjet Air",
                      aircraftType: "Airbus 320",
                      ticketType: "Economy",
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Divider(),
                  SizedBox(height: 8.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "SYD",
                                  style: theme.textTheme.titleLarge,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup2,
                                  height: 25.v,
                                  width: 146.h,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 53.h),
                              child: _buildFlightDetails(
                                context,
                                timestamp: "Hanoi",
                                duration: "1 stop",
                              ),
                            ),
                            SizedBox(height: 5.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                right: 49.h,
                              ),
                              child: _buildFlightDetails(
                                context,
                                timestamp: "Mar 25, 9:35",
                                duration: "12h30m",
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 11.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "HAN",
                              style: theme.textTheme.titleLarge,
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "Singapore",
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "Mar 25, 17:35",
                              style:
                                  CustomTextStyles.bodySmallPrimaryContainer12,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Divider(
                    color: appTheme.gray300,
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: _buildFlightDetailsOne(
                      context,
                      airlineName: "Vietjet Air",
                      aircraftType: "Airbus 320",
                      ticketType: "Economy",
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.v),
          child: SizedBox(
            width: 311.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray300,
            ),
          ),
        );
      },
      itemCount: 1,
      itemBuilder: (context, index) {
        return UserprofileItemWidget();
      },
    );
  }

  Widget _buildUserProfile2(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.v),
          child: SizedBox(
            width: 311.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray300,
            ),
          ),
        );
      },
      itemCount: 1,
      itemBuilder: (context, index) {
        return UserprofileItem2Widget();
      },
    );
  }

  /// Section Widget
  Widget _buildCheckoutColumn(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            onTapRowprice(context);
          },
          child: Container(
            decoration: AppDecoration.outlineBlack900,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(1.v),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$112",
                          style: theme.textTheme.titleMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "Total (1 adult)",
                            style: CustomTextStyles.bodySmall12,
                          ),
                        )
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    height: 40.v,
                    onPressed: () {
                      onTapRowprice(context);
                    },
                    width: 116.h,
                    text: "Checkout",
                    buttonStyle: CustomButtonStyles.fillTealA,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildFlightDetails(
    BuildContext context, {
    required String timestamp,
    required String duration,
  }) {
    return SizedBox(
      width: 172.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              timestamp,
              style: CustomTextStyles.bodySmallPrimaryContainer12.copyWith(
                color: theme.colorScheme.primaryContainer.withOpacity(0.6),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              duration,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.primaryContainer,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFlightDetailsOne(
    BuildContext context, {
    required String airlineName,
    required String aircraftType,
    required String ticketType,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVj,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            airlineName,
            style: CustomTextStyles.labelLargeGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(
            aircraftType,
            style: CustomTextStyles.bodySmall12.copyWith(
              color: theme.colorScheme.primaryContainer,
            ),
          ),
        ),
        Spacer(),
        Text(
          ticketType,
          style: CustomTextStyles.bodySmall12.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        )
      ],
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapRowprice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreen);
  }
}
