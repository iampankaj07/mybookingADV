import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  TextEditingController flightdelayvaluController = TextEditingController();

  TextEditingController changegatevalueController = TextEditingController();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;
  bool isSelectedSwitch4 = false;

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
              // Divider(
              //   color: theme.colorScheme.secondaryContainer,
              // ),
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
    return AppBar(
      // height: 81.v,
      centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back),
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      // ),
      title: Text(
        "Notification",
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
              padding: EdgeInsets.only(left: 15.h, right: 5.h, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Flight Delay",
                    style: theme.textTheme.titleSmall!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  CustomSwitch(
                    // margin: EdgeInsets.only(right: 8.h),
                    height: 1,
                    alignment: Alignment.topRight,
                    value: isSelectedSwitch,
                    onChange: (value) {
                      setState(() {
                        isSelectedSwitch = value;
                      });
                    },
                  )
                ],
              )),
          Divider(
            color: theme.colorScheme.secondaryContainer,
            indent: 20.h,
          ),
          SizedBox(height: 25.v),
          Padding(
              padding: EdgeInsets.only(left: 15.h, right: 5.h, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Change Gate ",
                    style: theme.textTheme.titleSmall!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  CustomSwitch(
                    // margin: EdgeInsets.only(right: 8.h),
                    height: 1,
                    alignment: Alignment.topRight,
                    value: isSelectedSwitch,
                    onChange: (value) {
                      setState(() {
                        isSelectedSwitch1 = value;
                      });
                    },
                  )
                ],
              )),
          Divider(
            color: theme.colorScheme.secondaryContainer,
            indent: 20.h,
          ),
          SizedBox(height: 25.v),
          Padding(
              padding: EdgeInsets.only(left: 15.h, right: 5.h, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Flight Cancellation",
                    style: theme.textTheme.titleSmall!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  CustomSwitch(
                    // margin: EdgeInsets.only(right: 8.h),
                    height: 1,
                    alignment: Alignment.topRight,
                    value: isSelectedSwitch,
                    onChange: (value) {
                      setState(() {
                        isSelectedSwitch2 = value;
                      });
                    },
                  )
                ],
              )),
          Divider(
            color: theme.colorScheme.secondaryContainer,
            indent: 20.h,
          ),
          SizedBox(height: 25.v),
          Padding(
              padding: EdgeInsets.only(left: 15.h, right: 5.h, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Schedule",
                    style: theme.textTheme.titleSmall!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  CustomSwitch(
                    // margin: EdgeInsets.only(right: 8.h),
                    height: 1,
                    alignment: Alignment.topRight,
                    value: isSelectedSwitch,
                    onChange: (value) {
                      setState(() {
                        isSelectedSwitch3 = value;
                      });
                    },
                  )
                ],
              )),
          Divider(
            color: theme.colorScheme.secondaryContainer,
            indent: 20.h,
          ),
          SizedBox(height: 25.v),
          Padding(
              padding: EdgeInsets.only(left: 15.h, right: 5.h, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment ",
                    style: theme.textTheme.titleSmall!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  CustomSwitch(
                    // margin: EdgeInsets.only(right: 8.h),
                    height: 1,
                    alignment: Alignment.topRight,
                    value: isSelectedSwitch,
                    onChange: (value) {
                      setState(() {
                        isSelectedSwitch4 = value;
                      });
                    },
                  )
                ],
              )),
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
