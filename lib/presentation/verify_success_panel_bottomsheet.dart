import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_outlined_button.dart'; // ignore_for_file: must_be_immutable

class VerifySuccessPanelBottomsheet extends StatelessWidget {
  const VerifySuccessPanelBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.h,
      padding: EdgeInsets.symmetric(vertical: 29.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder21,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 125.v,
            width: 122.h,
          ),
          SizedBox(height: 17.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 21.v),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Column(
              children: [
                Text(
                  "Email sent successflly",
                  style: CustomTextStyles.bodyLarge18,
                ),
                SizedBox(height: 9.v),
                SizedBox(
                  width: 185.h,
                  child: Text(
                    "Please click on verification link\nto verify your registration",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumInterBlack900,
                  ),
                ),
                SizedBox(height: 68.v),
                CustomOutlinedButton(
                  text: "Go To Dashboard",
                  buttonTextStyle: CustomTextStyles.titleSmallSemiBold,
                  onPressed: () {
                    onTapGotodashboard(context);
                  },
                ),
                SizedBox(height: 26.v)
              ],
            ),
          ),
          SizedBox(height: 38.v)
        ],
      ),
    );
  }

  /// Navigates to the searchPageContainerScreen when the action is triggered.
  onTapGotodashboard(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.homeScreen,
      (Route<dynamic> route) => false,
    );
  }
}
