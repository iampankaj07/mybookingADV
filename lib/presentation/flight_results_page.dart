import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import 'widgets/flightdetails_item_widget.dart';
import 'widgets/listdec_item_widget.dart'; // ignore_for_file: must_be_immutable

class FlightResultsPage extends StatefulWidget {
  const FlightResultsPage({Key? key})
      : super(
          key: key,
        );

  @override
  FlightResultsPageState createState() => FlightResultsPageState();
}

class FlightResultsPageState extends State<FlightResultsPage>
    with AutomaticKeepAliveClientMixin<FlightResultsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.v),
                Column(
                  children: [
                    _buildFlightDetails(context),
                    SizedBox(height: 25.v),
                    _buildRowDec(context)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFlightDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.v),
            child: SizedBox(
              width: 311.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.blueGray50,
              ),
            ),
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.addPassengerScreen);
              },
              child: FlightdetailsItemWidget());
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowDec(BuildContext context) {
    return Container(
      width: 375.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 2.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup1074,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: SizedBox(
              // width: 30,
              height: 78.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                // padding: EdgeInsets.only(bottom: 5),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20.h,
                  );
                },
                itemCount: 6,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 25.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      child: Column(
                        children: [
                          Text(
                            "DEC",
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "${(22 + index).toString()}",
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "\$110",
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            onTap: (() {
              Navigator.pushNamed(context, AppRoutes.addPassengerScreen);
            }),
            margin: EdgeInsets.only(
              left: 25.h,
              top: 18.v,
              bottom: 18.v,
            ),
          )
        ],
      ),
    );
  }
}
