import 'package:acuamattic_store/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 30,
        top: 11,
        right: 30,
        bottom: 11,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage225,
            height: getVerticalSize(115),
            width: getHorizontalSize(114),
            margin: getMargin(
              top: 19,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
