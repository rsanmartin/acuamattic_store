import 'package:acuamattic_store/core/app_export.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_circleimage.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_image.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_image_1.dart';
import 'package:acuamattic_store/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: CustomAppBar(
          height: getVerticalSize(185),
          leadingWidth: getHorizontalSize(54),
          leading: AppbarImage(
            svgPath: ImageConstant.imgNotification,
            margin: getMargin(
              left: 25,
              top: 3,
              bottom: 81,
            ),
          ),
          centerTitle: true,
          title: AppbarImage1(
            imagePath: ImageConstant.imgImage100,
          ),
          actions: [
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse9,
              margin: getMargin(
                left: 29,
                right: 29,
                bottom: 81,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: getMargin(
                  left: 52,
                  top: 60,
                  right: 52,
                ),
                padding: getPadding(
                  left: 19,
                  top: 30,
                  right: 19,
                  bottom: 30,
                ),
                decoration: AppDecoration.fillGray200.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: getVerticalSize(57),
                      width: getHorizontalSize(59),
                      margin: getMargin(
                        top: 6,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: getVerticalSize(57),
                              width: getHorizontalSize(59),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlus,
                            height: getVerticalSize(36),
                            width: getHorizontalSize(33),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 14,
                      ),
                      child: Text(
                        "Añadir Acuario",
                        style: CustomTextStyles.titleSmallOnPrimary,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
