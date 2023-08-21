import 'package:acuamattic_store/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashscreenScreen extends StatelessWidget {
  const SplashscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 51,
            right: 51,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage100,
                height: getVerticalSize(182),
                width: getHorizontalSize(327),
                margin: getMargin(
                  top: 53,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img1c13f3fe7a6bba3,
                height: getVerticalSize(163),
                width: getHorizontalSize(180),
                margin: getMargin(
                  top: 72,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
