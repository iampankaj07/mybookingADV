import 'package:flutter/material.dart';
import 'package:mybookingadv/widgets/customtextfieln_noborder.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
// import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController cardHolderController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expiryDateController = TextEditingController();

  TextEditingController cvcController = TextEditingController();

  TextEditingController yourCardIsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          // width: 375.h,
          child: Stack(
            children: [
              _buildAppBar(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        SizedBox(height: 100.v),
                        _buildColumnView(context),
                        SizedBox(height: 27.v),
                        _buildColumnCreditCard(context),
                        SizedBox(height: 16.v),
                        _buildYourCardIs(context),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildColumnpaynow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
      height: 180,
      decoration: AppDecoration.fillLightBlueA,
      child: AppBar(
        backgroundColor: appTheme.lightBlueA70001,
        leadingWidth: 21.h,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        // leading: AppbarLeadingImage(
        //   imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
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
        title: AppbarSubtitleOne(
          text: "Payment",
        ),
        // styleType: Style.bgFill_3,
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnView(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          SizedBox(
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
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "HAN",
                              style: theme.textTheme.titleLarge,
                            ),
                            Spacer(
                              flex: 44,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup2,
                              height: 25.v,
                              width: 145.h,
                            ),
                            Spacer(
                              flex: 55,
                            ),
                            Text(
                              "SYD",
                              style: theme.textTheme.titleLarge,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hanoi",
                              style: theme.textTheme.bodySmall,
                            ),
                            Spacer(
                              flex: 56,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Text(
                                "1 stop",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Spacer(
                              flex: 43,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "Singapore",
                                style: theme.textTheme.bodySmall,
                              ),
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
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer12,
                              ),
                              Text(
                                "12h30m",
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "Mar 20, 17:35",
                                style: CustomTextStyles
                                    .bodySmallPrimaryContainer12,
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
                          child: _buildRowvjThree(
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
                            ),
                            Text(
                              "HAN",
                              style: theme.textTheme.titleLarge,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 4.h),
                                  child: _buildRowmar259thirty(
                                    context,
                                    timestamp: "Hanoi",
                                    duration: "1 stop",
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: _buildRowmar259thirty(
                                    context,
                                    timestamp: "Mar 25, 9:35",
                                    duration: "12h30m",
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Singapore",
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "Mar 25, 17:35",
                                  style: CustomTextStyles
                                      .bodySmallPrimaryContainer12,
                                )
                              ],
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
                          child: _buildRowvjThree(
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
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(top: 4.v),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "Total:",
                    style: CustomTextStyles.labelLargeGray400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 2.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "\$112",
                    style: CustomTextStyles.titleLargeOnPrimary,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardHolder(BuildContext context) {
    return CustomTextFormFieldNoB(
      controller: cardHolderController,
      hintText: "eg. John dae",
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return CustomTextFormFieldNoB(
      controller: cardNumberController,
      hintText: "0000 - 0000 - 0000 - 0000",
      hintStyle: CustomTextStyles.bodyMediumPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildExpiryDate(BuildContext context) {
    return CustomTextFormFieldNoB(
      width: 163.h,
      controller: expiryDateController,
      hintText: "mm / yy",
    );
  }

  /// Section Widget
  Widget _buildCvc(BuildContext context) {
    return CustomTextFormFieldNoB(
      width: 163.h,
      controller: cvcController,
      hintText: "---",
    );
  }

  /// Section Widget
  Widget _buildColumnCreditCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Credit card",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 15.v),
          Divider(
            color: appTheme.blueGray50,
          ),
          SizedBox(height: 15.v),
          Text(
            "Card Holder",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 10.v),
          _buildCardHolder(context),
          SizedBox(height: 14.v),
          Text(
            "Card Number",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 10.v),
          _buildCardNumber(context),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expiry date",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.v),
                      _buildExpiryDate(context)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CVC",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.v),
                      _buildCvc(context)
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 13.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYourCardIs(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormFieldNoB(
        controller: yourCardIsController,
        hintText:
            "Your card is secured by Stripe. We do not store your credit card infomation.",
        hintStyle: CustomTextStyles.bodySmallPrimaryContainer12,
        textInputAction: TextInputAction.done,
        prefixConstraints: BoxConstraints(
          maxHeight: 64.v,
        ),
        maxLines: 2,
        borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
        filled: true,
        fillColor: appTheme.gray60014,
      ),
    );
  }

  /// Section Widget
  Widget _buildPayNow(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        onTapRowtotal1adult(context);
      },
      height: 40.v,
      width: 116.h,
      text: "Pay now",
      buttonStyle: CustomButtonStyles.fillTealA,
    );
  }

  /// Section Widget
  Widget _buildColumnpaynow(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            onTapRowtotal1adult(context);
          },
          child: Container(
            decoration: AppDecoration.outlineBlack900,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
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
                  _buildPayNow(context)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildRowmar259thirty(
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
  Widget _buildRowvjThree(
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

  /// Navigates to the confirmScreen when the action is triggered.
  onTapRowtotal1adult(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.confirmScreen);
  }
}
