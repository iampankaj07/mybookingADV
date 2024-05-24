import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum {
  Humbleiconsarrowgoback,
  Fluentshiftsa,
  Materialsymbolshomeoutline,
  Basilnotificationonoutline,
  Phuserbold
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHumbleiconsArrowGoBack,
      activeIcon: ImageConstant.imgHumbleiconsArrowGoBack,
      type: BottomBarEnum.Humbleiconsarrowgoback,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFluentShiftsA,
      activeIcon: ImageConstant.imgFluentShiftsA,
      type: BottomBarEnum.Fluentshiftsa,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMaterialSymbolsHomeOutline,
      activeIcon: ImageConstant.imgMaterialSymbolsHomeOutline,
      type: BottomBarEnum.Materialsymbolshomeoutline,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBasilNotificationOnOutline,
      activeIcon: ImageConstant.imgBasilNotificationOnOutline,
      type: BottomBarEnum.Basilnotificationonoutline,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgsettingnav,
      activeIcon: ImageConstant.imgsettingnav,
      type: BottomBarEnum.Phuserbold,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(
          15.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 30.v,
              width: 31.h,
              color: appTheme.black900,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 32.v,
              width: 30.h,
              color: appTheme.black900,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
