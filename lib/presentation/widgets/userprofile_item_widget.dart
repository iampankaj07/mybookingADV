import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart'; // ignore: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 132.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 46.adaptSize,
                        width: 46.adaptSize,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLockGray300,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(
                                right: 8.h,
                                bottom: 7.v,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: DottedBorder(
                                color: appTheme.gray300,
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 1.v,
                                  right: 1.h,
                                  bottom: 1.v,
                                ),
                                strokeWidth: 1.h,
                                radius: Radius.circular(5),
                                borderType: BorderType.RRect,
                                dashPattern: [2],
                                child: Container(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      5.h,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 16.adaptSize,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 1.v,
                                ),
                                decoration:
                                    AppDecoration.fillLightBlueA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Text(
                                  "1",
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Full Name",
                              style: theme.textTheme.bodySmall,
                            ),
                            Text(
                              "Mr. Rabbin",
                              style: CustomTextStyles.bodyLargeRoboto17,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 29.v),
                  child: CustomIconButton(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCloseGray400,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 44.h,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nationality",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "Neplease",
                      style: CustomTextStyles.bodySmallBlack900,
                    )
                  ],
                ),
                Spacer(
                  flex: 55,
                ),
                Column(
                  children: [
                    Text(
                      "Date of birth",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "15/04/1996",
                      style: CustomTextStyles.bodySmallBlack900,
                    )
                  ],
                ),
                Spacer(
                  flex: 45,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Passport",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "D9641312",
                      style: CustomTextStyles.bodySmallBlack900,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 73.h,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Travel insurance",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Travel Plus",
                        style: CustomTextStyles.bodySmallBlack900,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bags",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 2.v),
                      SizedBox(
                        width: 135.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Text(
                                "1x",
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgBagGray700,
                              height: 11.v,
                              width: 15.h,
                              margin: EdgeInsets.symmetric(vertical: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "56x32x36cm, 7kg",
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }
}

class UserprofileItem2Widget extends StatelessWidget {
  const UserprofileItem2Widget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 132.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 46.adaptSize,
                        width: 46.adaptSize,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLockGray300,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(
                                right: 8.h,
                                bottom: 7.v,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: DottedBorder(
                                color: appTheme.gray300,
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 1.v,
                                  right: 1.h,
                                  bottom: 1.v,
                                ),
                                strokeWidth: 1.h,
                                radius: Radius.circular(5),
                                borderType: BorderType.RRect,
                                dashPattern: [2],
                                child: Container(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      5.h,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 16.adaptSize,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 1.v,
                                ),
                                decoration:
                                    AppDecoration.fillLightBlueA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Text(
                                  "1",
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 7.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Full Name",
                              style: theme.textTheme.bodySmall,
                            ),
                            Text(
                              "Mr. Raj",
                              style: CustomTextStyles.bodyLargeRoboto17,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 29.v),
                  child: CustomIconButton(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCloseGray400,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 44.h,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nationality",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "Neplease",
                      style: CustomTextStyles.bodySmallBlack900,
                    )
                  ],
                ),
                Spacer(
                  flex: 55,
                ),
                Column(
                  children: [
                    Text(
                      "Date of birth",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "12/01/1998",
                      style: CustomTextStyles.bodySmallBlack900,
                    )
                  ],
                ),
                Spacer(
                  flex: 45,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Passport",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "D964132312",
                      style: CustomTextStyles.bodySmallBlack900,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 73.h,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Travel insurance",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Travel Plus",
                        style: CustomTextStyles.bodySmallBlack900,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bags",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 2.v),
                      SizedBox(
                        width: 135.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.v),
                              child: Text(
                                "1x",
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgBagGray700,
                              height: 11.v,
                              width: 15.h,
                              margin: EdgeInsets.symmetric(vertical: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "56x32x36cm, 7kg",
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }
}
