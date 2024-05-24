import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'widgets/languageslist_item_widget.dart';

class LanguagesScreen extends StatelessWidget {
  LanguagesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(context),
        body: Container(
          margin: EdgeInsets.only(
            top: 35.v,
            right: 15.h,
          ),
          padding: EdgeInsets.symmetric(vertical: 3.v),
          decoration: AppDecoration.outlineBlack900,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.0.v),
                  child: SizedBox(
                    width: 315.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.gray100,
                    ),
                  ),
                );
              },
              itemCount: 6,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: images[index],
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
                        country[index],
                        style: CustomTextStyles.bodyLargeRobotoLightblueA70001,
                      ),
                    ),
                    Spacer(),
                    index == 0
                        ? CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              right: 16.h,
                              bottom: 10.v,
                            ),
                          )
                        : Text("")
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  List images = [
    ImageConstant.imgThumbsUp,
    ImageConstant.imgTwemojiFlagNepal,
    ImageConstant.imgTelevisionIndigo600,
    ImageConstant.imgTelevisionRed700,
    ImageConstant.imgUserRedA20029x29,
    ImageConstant.imgUserRedA200,
  ];
  List country = [
    "English",
    "Nepalese",
    "Thailand",
    "Spanish",
    "German",
    "Portuguese"
  ];

  /// Setion Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      // height: 81.v,
      centerTitle: true,
      // leading: IconButton(
      //   icon: Icon(Icons.arrow_back),
      //   onPressed: () {
      //     onTapArrowleftone(context);
      //     Navigator.pop(context);
      //   },
      // ),
      title: Text(
        "Language",
        style:
            theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w400),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert),
        )
      ],
      // styleType: Style.bgFill,
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
