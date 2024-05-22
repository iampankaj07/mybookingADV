import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class LanguageslistItemWidget extends StatelessWidget {
  const LanguageslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgThumbsUp,
          height: 29.adaptSize,
          width: 29.adaptSize,
          margin: EdgeInsets.only(bottom: 10.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 6.v,
            bottom: 12.v,
          ),
          child: Text(
            "English",
            style: CustomTextStyles.bodyLargeRobotoLightblueA70001,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 3.v,
            right: 16.h,
            bottom: 10.v,
          ),
        )
      ],
    );
  }
}
