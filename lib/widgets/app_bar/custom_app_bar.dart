import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style { bgFill_1, bgFill_2, bgShadow, bgFill_3, bgFill }

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 44.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 44.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: 2.v,
          width: 376.h,
          decoration: BoxDecoration(
            color: appTheme.indigo50,
          ),
        );
      case Style.bgFill_2:
        return Container(
          height: 44.v,
          width: 375.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        );
      case Style.bgShadow:
        return Container(
          height: 44.v,
          width: 375.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
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
        );
      case Style.bgFill_3:
        return Container(
          height: 44.v,
          width: 375.h,
          decoration: BoxDecoration(
            color: appTheme.lightBlueA70001,
          ),
        );
      case Style.bgFill:
        return Container(
          height: 2.v,
          width: 373.h,
          margin: EdgeInsets.only(
            left: 9.82.h,
            top: 80.5.v,
            right: 10.179993.h,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
          ),
        );
      default:
        return null;
    }
  }
}
