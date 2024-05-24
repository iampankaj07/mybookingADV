import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'search_page_container1_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SeclectDateScreen extends StatelessWidget {
  SeclectDateScreen({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar = [];

  List<DateTime?> selectedDatesFromCalendar1 = [];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 376.h,
          child: Column(
            children: [
              _buildIphonexbarsn(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        _buildRowmon(context),
                        _buildCalendar(context),
                        // SizedBox(height: 23.v),
                        // _buildCalendarone(context)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildIphonexbarsn(BuildContext context) {
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
        "Pick a Date",
        style:
            theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400),
      ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Icon(Icons.more_vert),
      //   )
      // ],
      // // styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildRowmon(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              "Mon",
              style: CustomTextStyles.bodySmallGray500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Text(
              "Tue",
              style: CustomTextStyles.bodySmallGray500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "Wed",
              style: CustomTextStyles.bodySmallGray500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "Thu",
              style: CustomTextStyles.bodySmallGray500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "Fri",
              style: CustomTextStyles.bodySmallGray500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "Sat",
              style: CustomTextStyles.bodySmallGray500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "Sun",
              style: CustomTextStyles.bodySmallGray500,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
      height: 314.v,
      width: 376.h,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.multi,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          selectedDayHighlightColor: Color(0XFFF0F2F5),
          firstDayOfWeek: 0,
          selectedDayTextStyle: TextStyle(
            color: Color(0X993C3C43),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
          dayTextStyle: TextStyle(
            color: theme.colorScheme.primaryContainer.withOpacity(0.6),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        value: selectedDatesFromCalendar,
        onValueChanged: (dates) {},
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarone(BuildContext context) {
    return SizedBox(
      height: 312.v,
      width: 375.h,
      child: CalendarDatePicker2(
        config: CalendarDatePicker2Config(
          calendarType: CalendarDatePicker2Type.single,
          firstDate: DateTime(DateTime.now().year - 5),
          lastDate: DateTime(DateTime.now().year + 5),
          firstDayOfWeek: 0,
          dayTextStyle: TextStyle(
            color: theme.colorScheme.primaryContainer.withOpacity(0.6),
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
          ),
        ),
        value: selectedDatesFromCalendar1,
        onValueChanged: (dates) {},
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Humbleiconsarrowgoback:
        return AppRoutes.searchPageContainer1Page;
      case BottomBarEnum.Fluentshiftsa:
        return "/";
      case BottomBarEnum.Materialsymbolshomeoutline:
        return "/";
      case BottomBarEnum.Basilnotificationonoutline:
        return "/";
      case BottomBarEnum.Phuserbold:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.searchPageContainer1Page:
        return SearchPageContainer1Page();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
