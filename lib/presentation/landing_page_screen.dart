import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLoadingPage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 37.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Align(
                //   alignment: Alignment.center,
                //   child: Container(
                //     height: 12.v,
                //     margin: EdgeInsets.only(right: 62.h),
                //     child: AnimatedSmoothIndicator(
                //       activeIndex: 0,
                //       count: 3,
                //       effect: ScrollingDotsEffect(
                //         spacing: 13,
                //         activeDotColor: appTheme.black900,
                //         dotColor: appTheme.blueGray10001,
                //         dotHeight: 12.v,
                //         dotWidth: 14.h,
                //       ),
                //     ),
                //   ),
                // ),

                Spacer(
                  flex: 48,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 244.v,
                    width: 214.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillCyan.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder21,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAeroplane,
                      height: 221.v,
                      width: 192.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Spacer(
                  flex: 51,
                ),
                Text(
                  "Book Your Flight",
                  style: CustomTextStyles.titleLargeInterMedium,
                ),
                SizedBox(height: 37.v),
                Text(
                  "find your flights",
                  style: CustomTextStyles.labelLargeInterBlack900,
                ),
                Text(
                  "as  you want",
                  style: CustomTextStyles.labelLargeInterBlack900,
                ),
                SizedBox(height: 36.v),
                CustomElevatedButton(
                  height: 43.v,
                  width: 162.h,
                  text: "Get started",
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle:
                      CustomTextStyles.labelLargeInterOnPrimaryContainer,
                  onPressed: () {
                    onTapGetstarted(context);
                  },
                ),
                SizedBox(height: 67.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the loginPanelScreen when the action is triggered.
  onTapGetstarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPanelScreen);
  }
}
