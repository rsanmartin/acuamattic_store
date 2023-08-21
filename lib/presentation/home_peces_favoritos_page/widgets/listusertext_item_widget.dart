import 'package:acuamattic_store/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListusertextItemWidget extends StatelessWidget {
  const ListusertextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(88),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: getMargin(
            bottom: 1,
          ),
          padding: getPadding(
            left: 21,
            top: 8,
            right: 21,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage148,
                height: getVerticalSize(48),
                width: getHorizontalSize(46),
                margin: getMargin(
                  top: 5,
                ),
              ),
              Text(
                "",
                style: CustomTextStyles.bodySmallPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
