import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SearchPageContainer1Page extends StatelessWidget {
  SearchPageContainer1Page({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle3,
                height: 210.v,
                width: 393.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 39.h),
                  child: Text(
                    "Book Your Flight",
                    style: CustomTextStyles.titleLargeInika,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 39.h),
                  child: Text(
                    "We give you the best deal",
                    style: CustomTextStyles.bodyMediumInikaBlack900,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 46.h),
                child: CustomDropDown(
                  width: 149.h,
                  icon: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 7.v,
                      width: 15.h,
                    ),
                  ),
                  hintText: "Flight Type",
                  hintStyle: CustomTextStyles.bodyLargeInika,
                  alignment: Alignment.centerLeft,
                  items: dropdownItemList,
                ),
              ),
              SizedBox(height: 23.v),
              _buildFromLocation(context),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(right: 36.h),
                child: CustomDropDown(
                  hintText: "Class Type",
                  alignment: Alignment.centerLeft,
                  items: dropdownItemList1,
                  contentPadding: EdgeInsets.fromLTRB(30.h, 20.v, 30.h, 14.v),
                  borderDecoration: DropDownStyleHelper.fillBlueGrayTL17,
                ),
              ),
              SizedBox(height: 10.v),
              _buildPassengerDetails(context),
              SizedBox(height: 11.v),
              CustomElevatedButton(
                height: 50.v,
                width: 200.h,
                text: "Search",
                margin: EdgeInsets.only(left: 84.h),
                buttonStyle: CustomButtonStyles.fillTeal,
                buttonTextStyle:
                    CustomTextStyles.titleLargeInikaOnPrimaryContainer,
                onPressed: () {
                  onTapSearch(context);
                },
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFromLocation(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 135.v,
        width: 360.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 73.v),
              child: _buildFlightDetails(
                context,
                toText: "From",
                haniiText: "Sydney",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 73.v),
              child: _buildFlightDetails(
                context,
                toText: "To",
                haniiText: "Hanii",
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 49.v,
                width: 60.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  bottom: 18.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.red3000c,
                  borderRadius: BorderRadius.circular(
                    30.h,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 32.v,
              width: 36.h,
              radius: BorderRadius.circular(
                15.h,
              ),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 28.h),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassengerDetails(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 43.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 81.v,
              width: 122.h,
              margin: EdgeInsets.symmetric(vertical: 4.v),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "passenger",
                      style: CustomTextStyles.titleLargeInika,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 19.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.h,
                        vertical: 12.v,
                      ),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMdiHumanMale,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              top: 10.v,
                              bottom: 2.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIcSharpPlus,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              top: 10.v,
                              bottom: 2.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 14.h,
                              top: 9.v,
                            ),
                            child: Text(
                              "1",
                              style: CustomTextStyles.titleLargeInika,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIcRoundMinus,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              left: 9.h,
                              top: 10.v,
                              bottom: 2.v,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  "Date",
                  style: CustomTextStyles.titleLargeInika,
                ),
                GestureDetector(
                  onTap: () {
                    onTapRowfluentmdltwo(context);
                  },
                  child: Container(
                    width: 165.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 27.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFluentMdl2DateTime,
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            bottom: 2.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 7.v,
                          width: 15.h,
                          margin: EdgeInsets.symmetric(vertical: 21.v),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFlightDetails(
    BuildContext context, {
    required String toText,
    required String haniiText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 46.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16.v),
            child: Text(
              toText,
              style: CustomTextStyles.bodyMediumInikaBlack900.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 76.h,
              top: 5.v,
              bottom: 3.v,
            ),
            child: Text(
              haniiText,
              style: CustomTextStyles.titleLargeInika.copyWith(
                color: appTheme.black900,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the seclectDateScreen when the action is triggered.
  onTapRowfluentmdltwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seclectDateScreen);
  }

  /// Navigates to the flightResultsTabContainerScreen when the action is triggered.
  onTapSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.flightResultsTabContainerScreen);
  }
}
