import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBluegray501.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBag,
            height: 12.v,
            width: 16.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 25.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 3.v,
            ),
            child: Column(
              children: [
                Text(
                  "Cabin baggage",
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
                SizedBox(height: 6.v),
                Text(
                  "56x23x36cm, 7kg",
                  style: CustomTextStyles.bodySmall12,
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 26.v,
              right: 2.h,
            ),
            child: Text(
              "Free",
              style: CustomTextStyles.labelLargeBlack900,
            ),
          )
        ],
      ),
    );
  }
}
