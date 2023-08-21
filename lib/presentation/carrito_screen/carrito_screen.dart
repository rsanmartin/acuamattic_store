import 'package:acuamattic_store/core/app_export.dart';
import 'package:acuamattic_store/presentation/home_peces_favoritos_page/home_peces_favoritos_page.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_circleimage.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_image.dart';
import 'package:acuamattic_store/widgets/app_bar/custom_app_bar.dart';
import 'package:acuamattic_store/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CarritoScreen extends StatelessWidget {
  CarritoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(54),
          leading: AppbarImage(
            svgPath: ImageConstant.imgNotification,
            margin: getMargin(
              left: 25,
              top: 13,
              bottom: 14,
            ),
          ),
          actions: [
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse9,
              margin: getMargin(
                left: 34,
                top: 12,
                right: 34,
                bottom: 12,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 25,
            ),
            child: Container(
              margin: getMargin(
                right: 2,
                bottom: 5,
              ),
              padding: getPadding(
                left: 20,
                top: 25,
                right: 20,
                bottom: 25,
              ),
              decoration: AppDecoration.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 20,
                      top: 9,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage226,
                          height: getVerticalSize(81),
                          width: getHorizontalSize(45),
                          margin: getMargin(
                            top: 16,
                            bottom: 17,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: getPadding(
                              left: 33,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    right: 1,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 12,
                                        ),
                                        child: Text(
                                          "Prime",
                                          style: CustomTextStyles
                                              .titleMediumBlack900,
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(36),
                                        margin: getMargin(
                                          top: 4,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "2",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              TextSpan(
                                                text: "0€",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              TextSpan(
                                                text: " \n Unidad",
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "500 ml",
                                              style: CustomTextStyles
                                                  .titleSmallGray40001,
                                            ),
                                            Container(
                                              margin: getMargin(
                                                top: 4,
                                              ),
                                              padding: getPadding(
                                                left: 8,
                                                top: 6,
                                                right: 8,
                                                bottom: 6,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineBlack9001
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder21,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    height: getSize(30),
                                                    width: getSize(30),
                                                    padding: getPadding(
                                                      left: 7,
                                                      top: 8,
                                                      right: 7,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillGray50030
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15,
                                                    ),
                                                    child: CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgMenu,
                                                      height:
                                                          getVerticalSize(13),
                                                      width:
                                                          getHorizontalSize(14),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 36,
                                                      top: 3,
                                                      bottom: 2,
                                                    ),
                                                    child: Text(
                                                      "1",
                                                      style: theme.textTheme
                                                          .titleMedium,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: getSize(30),
                                                    width: getSize(30),
                                                    padding: getPadding(
                                                      all: 7,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillPrimary
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15,
                                                    ),
                                                    child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlusWhiteA700,
                                                      height: getSize(14),
                                                      width: getSize(14),
                                                      alignment:
                                                          Alignment.centerRight,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 44,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "40",
                                                    style: theme.textTheme
                                                        .headlineMedium,
                                                  ),
                                                  TextSpan(
                                                    text: " €",
                                                    style: CustomTextStyles
                                                        .titleLargeGreen400,
                                                  ),
                                                  TextSpan(
                                                    text: " ",
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Container(
                                              width: getHorizontalSize(80),
                                              margin: getMargin(
                                                top: 6,
                                              ),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "48,40 €\n",
                                                      style: theme
                                                          .textTheme.bodyMedium,
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "Impuestos Incluidos        ",
                                                      style: CustomTextStyles
                                                          .bodySmall8,
                                                    ),
                                                    TextSpan(
                                                      text: "",
                                                    ),
                                                    TextSpan(
                                                      text: " ",
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Divider(
                      color: appTheme.gray200Cc,
                      indent: getHorizontalSize(9),
                      endIndent: getHorizontalSize(20),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                      top: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage148,
                          height: getVerticalSize(75),
                          width: getHorizontalSize(76),
                          margin: getMargin(
                            top: 16,
                            bottom: 26,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: getPadding(
                              left: 17,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 31,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: getVerticalSize(59),
                                        width: getHorizontalSize(93),
                                        margin: getMargin(
                                          top: 4,
                                          bottom: 5,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                "L",
                                                style: CustomTextStyles
                                                    .titleSmallGray40001,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                width: getHorizontalSize(95),
                                                child: Text(
                                                  "Helanthium\n21",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .titleMediumBlack900,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: getHorizontalSize(36),
                                            margin: getMargin(
                                              right: 1,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: " ",
                                                  ),
                                                  TextSpan(
                                                    text: "30€",
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                  TextSpan(
                                                    text: " \n Unidad",
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 6,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "90",
                                                    style: theme.textTheme
                                                        .headlineMedium,
                                                  ),
                                                  TextSpan(
                                                    text: " €",
                                                    style: CustomTextStyles
                                                        .titleLargeGreen400,
                                                  ),
                                                  TextSpan(
                                                    text: " ",
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(155),
                                        padding: getPadding(
                                          left: 8,
                                          top: 6,
                                          right: 8,
                                          bottom: 6,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlack9001
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder21,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: getSize(30),
                                              width: getSize(30),
                                              padding: getPadding(
                                                left: 7,
                                                top: 8,
                                                right: 7,
                                                bottom: 8,
                                              ),
                                              decoration: AppDecoration
                                                  .fillGray50030
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15,
                                              ),
                                              child: CustomImageView(
                                                svgPath: ImageConstant.imgMenu,
                                                height: getVerticalSize(13),
                                                width: getHorizontalSize(14),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 36,
                                                top: 3,
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "1",
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                            ),
                                            Container(
                                              height: getSize(30),
                                              width: getSize(30),
                                              padding: getPadding(
                                                all: 7,
                                              ),
                                              decoration: AppDecoration
                                                  .fillPrimary
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15,
                                              ),
                                              child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgPlusWhiteA700,
                                                height: getSize(14),
                                                width: getSize(14),
                                                alignment:
                                                    Alignment.centerRight,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(80),
                                        margin: getMargin(
                                          left: 46,
                                          bottom: 9,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "108.90 €\n",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              TextSpan(
                                                text:
                                                    "Impuestos Incluidos        ",
                                                style:
                                                    CustomTextStyles.bodySmall8,
                                              ),
                                              TextSpan(
                                                text: "",
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Divider(
                      color: appTheme.gray200Cc,
                      indent: getHorizontalSize(9),
                      endIndent: getHorizontalSize(20),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage148,
                          height: getVerticalSize(67),
                          width: getHorizontalSize(85),
                          margin: getMargin(
                            top: 20,
                            bottom: 30,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: getPadding(
                              left: 13,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    right: 1,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 10,
                                        ),
                                        child: Text(
                                          "Guijarro",
                                          style: CustomTextStyles
                                              .titleMediumBlack900,
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(36),
                                        margin: getMargin(
                                          top: 2,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "20€",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              TextSpan(
                                                text: " \n Unidad",
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                          bottom: 4,
                                        ),
                                        child: Text(
                                          "100 gr",
                                          style: CustomTextStyles
                                              .titleSmallGray40001,
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "20",
                                              style: theme
                                                  .textTheme.headlineMedium,
                                            ),
                                            TextSpan(
                                              text: " €",
                                              style: CustomTextStyles
                                                  .titleLargeGreen400,
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 2,
                                    right: 1,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(155),
                                        padding: getPadding(
                                          left: 8,
                                          top: 6,
                                          right: 8,
                                          bottom: 6,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlack9001
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder21,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: getSize(30),
                                              width: getSize(30),
                                              padding: getPadding(
                                                left: 7,
                                                top: 8,
                                                right: 7,
                                                bottom: 8,
                                              ),
                                              decoration: AppDecoration
                                                  .fillGray50030
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15,
                                              ),
                                              child: CustomImageView(
                                                svgPath: ImageConstant.imgMenu,
                                                height: getVerticalSize(13),
                                                width: getHorizontalSize(14),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 36,
                                                top: 3,
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "1",
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                            ),
                                            Container(
                                              height: getSize(30),
                                              width: getSize(30),
                                              padding: getPadding(
                                                all: 7,
                                              ),
                                              decoration: AppDecoration
                                                  .fillPrimary
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder15,
                                              ),
                                              child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgPlusWhiteA700,
                                                height: getSize(14),
                                                width: getSize(14),
                                                alignment:
                                                    Alignment.centerRight,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(80),
                                        margin: getMargin(
                                          left: 46,
                                          top: 3,
                                          bottom: 6,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "24,20 €\n",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              TextSpan(
                                                text:
                                                    "Impuestos Incluidos        ",
                                                style:
                                                    CustomTextStyles.bodySmall8,
                                              ),
                                              TextSpan(
                                                text: "",
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Divider(
                      color: theme.colorScheme.onPrimaryContainer,
                      indent: getHorizontalSize(9),
                      endIndent: getHorizontalSize(12),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 7,
                      top: 19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage226,
                          height: getVerticalSize(70),
                          width: getHorizontalSize(71),
                          margin: getMargin(
                            top: 21,
                            bottom: 20,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: getPadding(
                              left: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 16,
                                    right: 2,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: getHorizontalSize(121),
                                        child: Text(
                                          "Pez Disco Tigre\n22",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .titleMediumBlack900,
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(36),
                                        margin: getMargin(
                                          top: 3,
                                          bottom: 4,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "50€",
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              TextSpan(
                                                text: " \n Unidad",
                                                style:
                                                    theme.textTheme.bodySmall,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: getVerticalSize(64),
                                        width: getHorizontalSize(155),
                                        margin: getMargin(
                                          top: 2,
                                          bottom: 2,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                "XL",
                                                style: CustomTextStyles
                                                    .titleSmallGray40001,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                width: getHorizontalSize(155),
                                                margin: getMargin(
                                                  top: 22,
                                                ),
                                                padding: getPadding(
                                                  left: 8,
                                                  top: 6,
                                                  right: 8,
                                                  bottom: 6,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineBlack9001
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder21,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: getSize(30),
                                                      width: getSize(30),
                                                      padding: getPadding(
                                                        left: 7,
                                                        top: 8,
                                                        right: 7,
                                                        bottom: 8,
                                                      ),
                                                      decoration: AppDecoration
                                                          .fillGray50030
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder15,
                                                      ),
                                                      child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenu,
                                                        height:
                                                            getVerticalSize(13),
                                                        width:
                                                            getHorizontalSize(
                                                                14),
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 3,
                                                        bottom: 2,
                                                      ),
                                                      child: Text(
                                                        "1",
                                                        style: theme.textTheme
                                                            .titleMedium,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: getSize(30),
                                                      width: getSize(30),
                                                      padding: getPadding(
                                                        all: 7,
                                                      ),
                                                      decoration: AppDecoration
                                                          .fillPrimary
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder15,
                                                      ),
                                                      child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlusWhiteA700,
                                                        height: getSize(14),
                                                        width: getSize(14),
                                                        alignment: Alignment
                                                            .centerRight,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 44,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "250",
                                                    style: theme.textTheme
                                                        .headlineMedium,
                                                  ),
                                                  TextSpan(
                                                    text: " €",
                                                    style: CustomTextStyles
                                                        .titleLargeGreen400,
                                                  ),
                                                  TextSpan(
                                                    text: " ",
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Container(
                                              width: getHorizontalSize(80),
                                              margin: getMargin(
                                                top: 6,
                                              ),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "302,50 €\n",
                                                      style: theme
                                                          .textTheme.bodyMedium,
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "Impuestos Incluidos        ",
                                                      style: CustomTextStyles
                                                          .bodySmall8,
                                                    ),
                                                    TextSpan(
                                                      text: "",
                                                    ),
                                                    TextSpan(
                                                      text: " ",
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Divider(
                      color: theme.colorScheme.onPrimaryContainer,
                      indent: getHorizontalSize(9),
                      endIndent: getHorizontalSize(10),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 35,
                      top: 23,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "SUBTOTAL:",
                                style: CustomTextStyles.titleLargeBlack900,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 6,
                                ),
                                child: Text(
                                  "IMPUESTOS:",
                                  style: CustomTextStyles.titleMediumBlack900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(61),
                          width: getHorizontalSize(52),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: " 400",
                                        style: CustomTextStyles
                                            .titleLargeGray40001,
                                      ),
                                      TextSpan(
                                        text: "€",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: " 84",
                                        style: CustomTextStyles
                                            .titleLargeGray40001,
                                      ),
                                      TextSpan(
                                        text: "€",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 34,
                        top: 30,
                        right: 11,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 10,
                              bottom: 7,
                            ),
                            child: Text(
                              "TOTAL:",
                              style: CustomTextStyles.headlineSmallBlack900,
                            ),
                          ),
                          SizedBox(
                            width: getHorizontalSize(100),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "484 €\n",
                                    style: theme.textTheme.headlineLarge,
                                  ),
                                  TextSpan(
                                    text: "Impuestos Incluidos",
                                    style: CustomTextStyles.bodySmallBlack900,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Rideviceline:
        return "/";
      case BottomBarEnum.Image6:
        return AppRoutes.homePecesFavoritosPage;
      case BottomBarEnum.Ionfishoutline:
        return "/";
      case BottomBarEnum.Vector:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePecesFavoritosPage:
        return HomePecesFavoritosPage();
      default:
        return DefaultWidget();
    }
  }
}
