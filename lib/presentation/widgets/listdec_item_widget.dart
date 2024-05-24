import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ListdecItemWidget extends StatelessWidget {
  ListdecItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
              "22",
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
  }
}
