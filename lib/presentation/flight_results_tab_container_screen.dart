import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'flight_results_page.dart';

class FlightResultsTabContainerScreen extends StatefulWidget {
  const FlightResultsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FlightResultsTabContainerScreenState createState() =>
      FlightResultsTabContainerScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FlightResultsTabContainerScreenState
    extends State<FlightResultsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              _buildStackView(context),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      SizedBox(height: 16.v),
                      _buildTabview(context),
                      Expanded(
                        child: SizedBox(
                          height: 1246.v,
                          child: TabBarView(
                            controller: tabviewController,
                            children: [
                              FlightResultsPage(),
                              FlightResultsPage(),
                              FlightResultsPage(),
                              FlightResultsPage()
                            ],
                          ),
                        ),
                      )
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
  Widget _buildStackView(BuildContext context) {
    return SizedBox(
      // height: 272.v,
      // width: 375.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 192.v,
              width: 375.h,
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
              decoration: AppDecoration.outlineBlack900,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppBar(
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
                    title: AppbarSubtitleThree(
                      text: "SIN - HAN",
                      margin: EdgeInsets.only(left: 119.h),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.filter_alt_outlined),
                      )
                    ],
                    // styleType: Style.bgFill_2,
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgLinkedin,
                                  height: 19.v,
                                  width: 14.h,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text(
                                    "Sydney (SYD)",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 8.v),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: SizedBox(
                                height: 32.v,
                                child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                  color: appTheme.gray400,
                                ),
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgAirplane,
                                  height: 17.adaptSize,
                                  width: 17.adaptSize,
                                  margin: EdgeInsets.only(top: 2.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "Vietnam (HAN)",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 27.v,
                            bottom: 25.v,
                          ),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPlayGray10001,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillGray10001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Wed, Jun 20",
                          style: theme.textTheme.bodyMedium,
                        ),
                        Spacer(
                          flex: 52,
                        ),
                        Text(
                          "-",
                          style: theme.textTheme.bodyMedium,
                        ),
                        Spacer(
                          flex: 47,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 7.h),
                          child: Text(
                            "Mon, Jun 25",
                            style: theme.textTheme.bodyMedium,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      right: 37.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionGray400,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "Return",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionGray40021x19,
                          height: 17.adaptSize,
                          width: 17.adaptSize,
                          margin: EdgeInsets.only(top: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "2",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgIcon,
                          height: 17.adaptSize,
                          width: 17.adaptSize,
                          margin: EdgeInsets.only(
                            left: 15.h,
                            top: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "0",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbsUpGray400,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            left: 15.h,
                            top: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "0",
                            style: theme.textTheme.bodyMedium,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 38.v,
      width: 359.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: appTheme.lightBlueA70001,
          borderRadius: BorderRadius.circular(
            16.h,
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
        tabs: [
          Tab(
            child: Text(
              "Best",
            ),
          ),
          Tab(
            child: Text(
              "Cheapest",
            ),
          ),
          Tab(
            child: Text(
              "Fastest",
            ),
          ),
          Tab(
            child: Text(
              "Nonstop",
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
