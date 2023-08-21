import '../tienda_screen/widgets/userprofile_item_widget.dart';
import 'package:acuamattic_store/core/app_export.dart';
import 'package:acuamattic_store/presentation/home_peces_favoritos_page/home_peces_favoritos_page.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_circleimage.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_image.dart';
import 'package:acuamattic_store/widgets/app_bar/custom_app_bar.dart';
import 'package:acuamattic_store/widgets/custom_bottom_bar.dart';
import 'package:acuamattic_store/widgets/custom_drop_down.dart';
import 'package:acuamattic_store/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TiendaScreen extends StatelessWidget {
  TiendaScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
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
              top: 8,
            ),
            child: Padding(
              padding: getPadding(
                left: 20,
                right: 23,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomDropDown(
                          icon: Container(
                            margin: getMargin(
                              left: 30,
                              right: 12,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                            ),
                          ),
                          hintText: "Filtros",
                          items: dropdownItemList,
                          contentPadding: getPadding(
                            left: 16,
                            top: 11,
                            bottom: 11,
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      CustomIconButton(
                        height: 37,
                        width: 37,
                        margin: getMargin(
                          left: 19,
                          top: 4,
                          bottom: 3,
                        ),
                        padding: getPadding(
                          all: 6,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgIconsaxlinearsearchstatus,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: getVerticalSize(247),
                    width: getHorizontalSize(387),
                    margin: getMargin(
                      top: 27,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: getMargin(
                              right: 98,
                            ),
                            padding: getPadding(
                              left: 21,
                              top: 7,
                              right: 21,
                              bottom: 7,
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
                                  height: getVerticalSize(35),
                                  width: getHorizontalSize(44),
                                  margin: getMargin(
                                    top: 12,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                  ),
                                  child: Text(
                                    "Suelo",
                                    style: CustomTextStyles.bodySmallPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: getMargin(
                              bottom: 1,
                            ),
                            padding: getPadding(
                              left: 10,
                              top: 7,
                              right: 10,
                              bottom: 7,
                            ),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage226,
                                  height: getVerticalSize(57),
                                  width: getHorizontalSize(65),
                                ),
                                Text(
                                  "Productos",
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: getMargin(
                              left: 103,
                            ),
                            padding: getPadding(
                              left: 14,
                              top: 8,
                              right: 14,
                              bottom: 8,
                            ),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage225,
                                  height: getVerticalSize(48),
                                  width: getHorizontalSize(54),
                                  margin: getMargin(
                                    top: 1,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 6,
                                    top: 3,
                                  ),
                                  child: Text(
                                    "Plantas",
                                    style: CustomTextStyles.bodySmallPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: getMargin(
                              left: 5,
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
                                  "Peces",
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: getVerticalSize(163),
                            width: getHorizontalSize(386),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    height: getVerticalSize(133),
                                    width: getHorizontalSize(386),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUnsplash9xngoipxceo,
                                          height: getVerticalSize(133),
                                          width: getHorizontalSize(386),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(13),
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: getVerticalSize(61),
                                            width: getHorizontalSize(128),
                                            margin: getMargin(
                                              left: 30,
                                              top: 19,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Text(
                                                    "Seachem",
                                                    style: CustomTextStyles
                                                        .headlineMediumWhiteA700,
                                                  ),
                                                ),
                                                CustomIconButton(
                                                  height: 23,
                                                  width: 128,
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillWhiteA,
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgExclude,
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
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMacoskp74urneu7u6large,
                                  height: getVerticalSize(155),
                                  width: getHorizontalSize(167),
                                  alignment: Alignment.bottomRight,
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
                      top: 89,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(177),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(23),
                        crossAxisSpacing: getHorizontalSize(23),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return UserprofileItemWidget();
                      },
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
