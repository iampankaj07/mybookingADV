import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class FlightdetailsItemWidget extends StatelessWidget {
  const FlightdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVj,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "9:35",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Text(
                      "SYD-HAN",
                      style: CustomTextStyles.bodySmall12,
                    )
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAirplaneLightBlueA70001,
                height: 14.v,
                width: 15.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                  bottom: 18.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  bottom: 15.v,
                ),
                child: Text(
                  "14:35",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "direct flight",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "5h 00m",
                      style: CustomTextStyles.bodySmall12,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 29.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVj,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
              Container(
                height: 33.v,
                width: 140.h,
                margin: EdgeInsets.only(left: 18.h),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            "14:55",
                            style: theme.textTheme.titleMedium,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgAirplaneLightBlueA70001,
                            height: 14.v,
                            width: 15.h,
                            margin: EdgeInsets.only(
                              left: 20.h,
                              bottom: 3.v,
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "19:20",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "HAN - SYD, Vietjet Air",
                        style: CustomTextStyles.bodySmall12,
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 3.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "direct flight",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "5h 00m",
                      style: CustomTextStyles.bodySmall12,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 29.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: Text(
                  "Total Cost",
                  style: CustomTextStyles.bodySmall12,
                ),
              ),
              Text(
                "\$647",
                style: theme.textTheme.titleMedium,
              )
            ],
          )
        ],
      ),
    );
  }
}
