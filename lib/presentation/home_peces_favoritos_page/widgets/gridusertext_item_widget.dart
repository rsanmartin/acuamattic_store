import 'package:acuamattic_store/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridusertextItemWidget extends StatelessWidget {
  const GridusertextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 26,
        top: 9,
        right: 26,
        bottom: 9,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage226,
            height: getVerticalSize(97),
            width: getHorizontalSize(119),
            alignment: Alignment.centerRight,
            margin: getMargin(
              top: 22,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 14,
            ),
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
