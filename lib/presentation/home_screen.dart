import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'search_page_container1_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController returnvalueoneController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  // Initial Selected Value
  String dropdownvalue = 'One Way';

  // List of items in our dropdown menu
  var items = [
    'One Way',
    'Return',
  ];

  DateTime selectedDate = DateTime.now();
  DateTime selectedDatetill = DateTime.now();
  String _day = '';
  String _month = '';
  String _abbday = '';
  String _day1 = '';
  String _month1 = '';
  String _abbday1 = '';
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _day = DateFormat('d').format(picked); // Day of the week
        _month = DateFormat('MMMM').format(picked); // Month
        _abbday =
            (DateFormat('E').format(picked)).toString(); // Week of the year
      });
    }
  }

  Future<void> _selectDatetill(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDatetill,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDatetill) {
      setState(() {
        selectedDatetill = picked;
        _day1 = DateFormat('d').format(picked); // Day of the week
        _month1 = DateFormat('MMMM').format(picked); // Month
        _abbday1 =
            (DateFormat('E').format(picked)).toString(); // Week of the year
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 426.h,
          padding: EdgeInsets.symmetric(vertical: 7.v),
          child: Column(
            children: [
              SizedBox(height: 47.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 207.h,
                            child: Text(
                              "Travel the world made simple",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 41.v),
                        _buildColumnLinkedin(context),
                        SizedBox(height: 20.v),
                        _buildRowReturnValue(context),
                        SizedBox(height: 29.v),
                        CustomElevatedButton(
                          text: "Search",
                          buttonStyle: CustomButtonStyles.fillLightBlueA,
                          onPressed: () {
                            Navigator.pushNamed(context,
                                AppRoutes.flightResultsTabContainerScreen);
                          },
                        ),
                        SizedBox(height: 287.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 217.h,
                            child: Divider(
                              color: appTheme.gray900,
                              indent: 142.h,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      actions: [
        Container(
            margin: EdgeInsets.fromLTRB(18.h, 4.v, 18.h, 3.v),
            decoration: BoxDecoration(
                color: appTheme.gray10002,
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.person,
                size: 28,
              ),
            ))
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnLinkedin(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              right: 1.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedin,
                          height: 24.v,
                          width: 15.h,
                          margin: EdgeInsets.only(bottom: 6.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 13.h,
                            top: 10.v,
                          ),
                          child: Text(
                            "Australia (AUS)",
                            style: theme.textTheme.titleMedium,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: SizedBox(
                        height: 39.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.gray400,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAirplane,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(top: 6.v),
                        ),
                        InkWell(
                          onTap: () {
                            onTapSearch(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 9.h,
                              bottom: 7.v,
                            ),
                            child: Text(
                              "Vietnam(HAN)",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 34.v,
                    bottom: 29.v,
                  ),
                  child: CustomIconButton(
                    height: 39.v,
                    width: 36.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 32.v),
          Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: InkWell(
              onTap: (() {
                // Navigator.pushNamed(context, AppRoutes.seclectDateScreen);
              }),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => _selectDate(context),
                    child: Text(
                      _abbday == ""
                          ? "Select date"
                          : "${_abbday}, ${_month} ${_day} ",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  Text(
                    "-",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Spacer(
                    flex: 22,
                  ),
                  InkWell(
                    onTap: () => _selectDatetill(context),
                    child: Text(
                      _abbday1 == ""
                          ? "Select date"
                          : "${_abbday1}, ${_month1} ${_day1} ",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Spacer(
                    flex: 26,
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
  Widget _buildRowReturnValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              // margin: EdgeInsets.only(left: 9.h),
              padding: EdgeInsets.symmetric(
                  // horizontal: 14.h,
                  // vertical: 12.v,
                  ),
              decoration: AppDecoration.fillGray10001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(17.h, 14.v, 9.h, 11.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTelevisionGray400,
                      height: 22.v,
                      width: 20.h,
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,
                      // underline: false,
                      // Down Arrow Icon
                      // icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: theme.textTheme.bodyMedium,
                          ),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 9.h),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillGray10001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevisionGray40021x19,
                    height: 21.v,
                    width: 19.h,
                    margin: EdgeInsets.only(top: 1.v),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "2",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                    height: 21.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      left: 17.h,
                      top: 1.v,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 5.h,
                        top: 1.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "0",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpGray400,
                    height: 20.v,
                    width: 18.h,
                    margin: EdgeInsets.only(
                      left: 17.h,
                      top: 1.v,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 1.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "0",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(context, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Humbleiconsarrowgoback:
        return "/";
      case BottomBarEnum.Fluentshiftsa:
        return "/";
      case BottomBarEnum.Materialsymbolshomeoutline:
        return "/";
      case BottomBarEnum.Basilnotificationonoutline:
        return AppRoutes.notificationScreen;
      case BottomBarEnum.Phuserbold:
        return AppRoutes.settingScreen;
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

  /// Navigates to the searchPlaceScreen when the action is triggered.
  onTapSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchPlaceScreen);
  }
}
