import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class ConfirmScreen extends StatelessWidget {
  const ConfirmScreen({Key? key})
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
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 34.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Column(
                children: [
                  _buildSuccessMessage(context),
                  SizedBox(height: 25.v),
                  _buildBookingSummary(context),
                  SizedBox(height: 32.v),
                  _buildStackvjThree(
                    context,
                    vietjetairOne: "Vietjet Air",
                    airbusCounter: "Airbus 320",
                    outboundOne: "Outbound",
                    p20marmonOne: "20 Mar, Mon",
                    hanOne: "HAN",
                    hanoinoibaiOne: "Hanoi Noi Bai",
                    time: "9:35",
                    mar20monTwo: "Mar 20, Mon",
                    stopCounter: "1 stop",
                    distance: "12h30m",
                    sinOne: "SYD",
                    singaporeOne: "Singapore, Changi",
                    time1: "17:35",
                    mar20monThree: "Mar 20, Mon",
                    flightnoOne: "Flight no:",
                    vj230One: "VJ-230",
                    eticketcodeOne: "eTicket code:",
                    pghrpwOne: "PGHRPW",
                    stationOne: "Station:",
                    noibaiOne: "Noi Bai",
                    terminalOne: "Terminal:",
                    t2One: "T2",
                    passengername: "Passenger name:",
                    phongvanOne: "John Dae",
                    baggageOne: "Baggage:",
                    weight: "1 x 56x23x36, 7kg",
                    weight1: "1 x 78x28x52, 20kg",
                    classsOne: "Classs:",
                    economyOne: "Economy",
                    bookingnumber: "Booking number: 53422",
                  ),
                  SizedBox(height: 16.v),
                  _buildStackvjThree(
                    context,
                    vietjetairOne: "Vietjet Air",
                    airbusCounter: "Airbus 320",
                    outboundOne: "Return",
                    p20marmonOne: "20 Mar, Mon",
                    hanOne: "SYD",
                    hanoinoibaiOne: "Hanoi Noi Bai",
                    time: "9:35",
                    mar20monTwo: "Mar 20, Mon",
                    stopCounter: "1 stop",
                    distance: "12h30m",
                    sinOne: "HAN",
                    singaporeOne: "Singapore, Changi",
                    time1: "17:35",
                    mar20monThree: "Mar 20, Mon",
                    flightnoOne: "Flight no:",
                    vj230One: "VJ-230",
                    eticketcodeOne: "eTicket code:",
                    pghrpwOne: "PGHRPW",
                    stationOne: "Station:",
                    noibaiOne: "Noi Bai",
                    terminalOne: "Terminal:",
                    t2One: "T2",
                    passengername: "Passenger name:",
                    phongvanOne: "John Dae",
                    baggageOne: "Baggage:",
                    weight: "1 x 56x23x36, 7kg",
                    weight1: "1 x 78x28x52, 20kg",
                    classsOne: "Classs:",
                    economyOne: "Economy",
                    bookingnumber: "Booking number: 53422",
                  ),
                  SizedBox(height: 34.v),
                  CustomElevatedButton(
                    height: 50.v,
                    text: "Go to home",
                    buttonStyle: CustomButtonStyles.fillLightBlueATL8,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumOnPrimaryContainer_1,
                    onPressed: () {
                      onTapGotohome(context);
                    },
                  )
                ],
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
        text: "Confirm",
      ),
      // styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildSuccessMessage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkErrorcontainer,
            height: 71.adaptSize,
            width: 71.adaptSize,
          ),
          SizedBox(height: 18.v),
          Text(
            "Payment successful!",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 306.h,
            child: Text(
              "Your payment has been progessed, details transaction are included below. The eTicket of your reservation will be sending to your email at rabbin@gmail.com",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.33,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingSummary(BuildContext context) {
    return SizedBox(
      // height: 272.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(right: 1.h),
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildRow1xcabin(
                    context,
                    cabinBaggageText: "1 x Passenger",
                    freeText: "\$112.36",
                  ),
                  SizedBox(height: 12.v),
                  _buildRow1xcabin(
                    context,
                    cabinBaggageText: "1 x Cabin baggage",
                    freeText: "Free",
                  ),
                  SizedBox(height: 13.v),
                  _buildRow1xcabin(
                    context,
                    cabinBaggageText: "1 x Checked baggage",
                    freeText: "\$7.23",
                  ),
                  SizedBox(height: 13.v),
                  _buildRow1xcabin(
                    context,
                    cabinBaggageText: "1 x Travel insurance",
                    freeText: "\$7.46",
                  ),
                  SizedBox(height: 14.v),
                  _buildRow1xcabin(
                    context,
                    cabinBaggageText: "1 x AirHelp+",
                    freeText: "\$5.56",
                  ),
                  SizedBox(height: 14.v),
                  _buildRow1xcabin(
                    context,
                    cabinBaggageText: "1 x  Plus service package",
                    freeText: "\$11.35",
                  ),
                  SizedBox(height: 29.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgInbox,
                        height: 30.v,
                        width: 28.h,
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 9.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "Total:",
                          style: CustomTextStyles.bodySmallPrimaryContainer12,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.h,
                          top: 4.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "\$ 143.96",
                          style: theme.textTheme.titleMedium,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 63.v),
              child: SizedBox(
                width: 344.h,
                child: Divider(),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRow1xcabin(
    BuildContext context, {
    required String cabinBaggageText,
    required String freeText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            cabinBaggageText,
            style: CustomTextStyles.bodySmallPrimaryContainer12.copyWith(
              color: theme.colorScheme.primaryContainer.withOpacity(0.6),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            freeText,
            style: CustomTextStyles.labelLargeBlack900Black.copyWith(
              color: appTheme.black900,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildStackvjThree(
    BuildContext context, {
    required String vietjetairOne,
    required String airbusCounter,
    required String outboundOne,
    required String p20marmonOne,
    required String hanOne,
    required String hanoinoibaiOne,
    required String time,
    required String mar20monTwo,
    required String stopCounter,
    required String distance,
    required String sinOne,
    required String singaporeOne,
    required String time1,
    required String mar20monThree,
    required String flightnoOne,
    required String vj230One,
    required String eticketcodeOne,
    required String pghrpwOne,
    required String stationOne,
    required String noibaiOne,
    required String terminalOne,
    required String t2One,
    required String passengername,
    required String phongvanOne,
    required String baggageOne,
    required String weight,
    required String weight1,
    required String classsOne,
    required String economyOne,
    required String bookingnumber,
  }) {
    return SizedBox(
      // height: 560.v,
      width: 345.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 1.h),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 1.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVj,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                vietjetairOne,
                                style:
                                    CustomTextStyles.titleSmallRoboto.copyWith(
                                  color: appTheme.black900,
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                airbusCounter,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.primaryContainer,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgQrcode,
                          height: 33.adaptSize,
                          width: 33.adaptSize,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          outboundOne,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: theme.colorScheme.primaryContainer
                                .withOpacity(0.6),
                          ),
                        ),
                        Text(
                          p20marmonOne,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: theme.colorScheme.primaryContainer
                                .withOpacity(0.6),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hanOne,
                              style: theme.textTheme.titleLarge!.copyWith(
                                color: appTheme.black900,
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              hanoinoibaiOne,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: theme.colorScheme.primaryContainer,
                              ),
                            ),
                            SizedBox(height: 8.v),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                time,
                                style:
                                    CustomTextStyles.titleLargeRegular.copyWith(
                                  color: appTheme.black900,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                mar20monTwo,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.primaryContainer,
                                ),
                              ),
                            )
                          ],
                        ),
                        Spacer(
                          flex: 62,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 7.v,
                            bottom: 18.v,
                          ),
                          child: Column(
                            children: [
                              Text(
                                stopCounter,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.primaryContainer,
                                ),
                              ),
                              SizedBox(height: 36.v),
                              Text(
                                distance,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.primaryContainer,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 37,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 2.h),
                              child: Text(
                                sinOne,
                                style: theme.textTheme.titleLarge!.copyWith(
                                  color: appTheme.black900,
                                ),
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                singaporeOne,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.primaryContainer,
                                ),
                              ),
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              time1,
                              style:
                                  CustomTextStyles.titleLargeRegular.copyWith(
                                color: appTheme.black900,
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              mar20monThree,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: theme.colorScheme.primaryContainer,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Divider(
                    indent: 2.h,
                    endIndent: 1.h,
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 31.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                flightnoOne,
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer
                                    .copyWith(
                                  color: theme.colorScheme.primaryContainer
                                      .withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: 7.v),
                              Text(
                                vj230One,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  color: appTheme.black900,
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              eticketcodeOne,
                              style: CustomTextStyles.bodySmallPrimaryContainer
                                  .copyWith(
                                color: theme.colorScheme.primaryContainer
                                    .withOpacity(0.6),
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                pghrpwOne,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  color: appTheme.black900,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 55.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                stationOne,
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer
                                    .copyWith(
                                  color: theme.colorScheme.primaryContainer
                                      .withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                noibaiOne,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  color: appTheme.black900,
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text(
                                terminalOne,
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer
                                    .copyWith(
                                  color: theme.colorScheme.primaryContainer
                                      .withOpacity(0.6),
                                ),
                              ),
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              t2One,
                              style: theme.textTheme.titleMedium!.copyWith(
                                color: appTheme.black900,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Divider(
                    indent: 2.h,
                    endIndent: 2.h,
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      passengername,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      phongvanOne,
                      style: theme.textTheme.titleMedium!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 2.h,
                      right: 41.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                baggageOne,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: theme.colorScheme.primaryContainer,
                                ),
                              ),
                              SizedBox(height: 7.v),
                              Text(
                                weight,
                                style: CustomTextStyles.labelLargeBlack900
                                    .copyWith(
                                  color: appTheme.black900,
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                weight1,
                                style: CustomTextStyles.labelLargeBlack900
                                    .copyWith(
                                  color: appTheme.black900,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 14.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text(
                                  classsOne,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    color: theme.colorScheme.primaryContainer,
                                  ),
                                ),
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                economyOne,
                                style: CustomTextStyles.bodyMediumBlack900
                                    .copyWith(
                                  color: appTheme.black900,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Text(
                        bookingnumber,
                        style:
                            CustomTextStyles.labelLargeBlack900Black.copyWith(
                          color: appTheme.black900,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [Divider(), SizedBox(height: 454.v), Divider()],
          //   ),
          // )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapGotohome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
