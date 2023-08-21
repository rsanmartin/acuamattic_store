import '../peces_descripcion_screen/widgets/chipviewxll_item_widget.dart';
import 'package:acuamattic_store/core/app_export.dart';
import 'package:acuamattic_store/presentation/home_peces_favoritos_page/home_peces_favoritos_page.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_circleimage.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_image.dart';
import 'package:acuamattic_store/widgets/app_bar/custom_app_bar.dart';
import 'package:acuamattic_store/widgets/custom_bottom_bar.dart';
import 'package:acuamattic_store/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PecesDescripcionScreen extends StatelessWidget {
  PecesDescripcionScreen({Key? key}) : super(key: key);

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
                    margin: getMargin(left: 25, top: 13, bottom: 14)),
                actions: [
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgEllipse9,
                      margin:
                          getMargin(left: 34, top: 12, right: 34, bottom: 12))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 62),
                    child: Padding(
                        padding: getPadding(left: 34, right: 21, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage228,
                                              height: getVerticalSize(234),
                                              width: getHorizontalSize(228)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 68, top: 8),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 11,
                                                            bottom: 10),
                                                        child: SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    81),
                                                            child: Divider())),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20),
                                                        child: Text("21",
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall)),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 11, bottom: 9),
                                                        child: SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    111),
                                                            child: Divider(
                                                                indent:
                                                                    getHorizontalSize(
                                                                        21))))
                                                  ])),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup84,
                                              height: getVerticalSize(61),
                                              width: getHorizontalSize(219),
                                              margin:
                                                  getMargin(top: 38, right: 6)),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 46),
                                                  child: Text(
                                                      "Tamaño:  21 x 21 21",
                                                      style: CustomTextStyles
                                                          .titleSmallBluegray900)))
                                        ])),
                                    Padding(
                                        padding:
                                            getPadding(left: 6, bottom: 200),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(right: 5),
                                                  child: SizedBox(
                                                      height:
                                                          getVerticalSize(91),
                                                      child: VerticalDivider(
                                                          width:
                                                              getHorizontalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1)))),
                                              Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Text("21",
                                                      style: theme.textTheme
                                                          .titleSmall)),
                                              Padding(
                                                  padding: getPadding(right: 5),
                                                  child: SizedBox(
                                                      height:
                                                          getVerticalSize(113),
                                                      child: VerticalDivider(
                                                          width:
                                                              getHorizontalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          indent:
                                                              getHorizontalSize(
                                                                  8))))
                                            ]))
                                  ]),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 15),
                                      child: Wrap(
                                          runSpacing: getVerticalSize(15),
                                          spacing: getHorizontalSize(15),
                                          children: List<Widget>.generate(
                                              5,
                                              (index) =>
                                                  ChipviewxllItemWidget())))),
                              Padding(
                                  padding: getPadding(top: 58),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "50 € ",
                                            style:
                                                theme.textTheme.displayMedium),
                                        TextSpan(
                                            text: "Und.",
                                            style:
                                                theme.textTheme.headlineSmall)
                                      ]),
                                      textAlign: TextAlign.left)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(top: 15),
                                      padding: getPadding(
                                          left: 8, top: 6, right: 8, bottom: 6),
                                      decoration: AppDecoration.outlineBlack9001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder21),
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
                                                    bottom: 8),
                                                decoration: AppDecoration
                                                    .fillGray50030
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder15),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgMenu,
                                                    height: getVerticalSize(13),
                                                    width:
                                                        getHorizontalSize(14),
                                                    alignment:
                                                        Alignment.center)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 36,
                                                    top: 3,
                                                    bottom: 2),
                                                child: Text("1",
                                                    style: theme.textTheme
                                                        .titleMedium)),
                                            Container(
                                                height: getSize(30),
                                                width: getSize(30),
                                                padding: getPadding(all: 7),
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder15),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgPlusWhiteA700,
                                                    height: getSize(14),
                                                    width: getSize(14),
                                                    alignment:
                                                        Alignment.centerRight))
                                          ]))),
                              CustomElevatedButton(
                                  height: getVerticalSize(52),
                                  text: "Añadir",
                                  margin: getMargin(left: 8, top: 27),
                                  buttonStyle: CustomButtonStyles.fillGreen,
                                  buttonTextStyle:
                                      CustomTextStyles.titleLargeWhiteA700,
                                  onTap: () {
                                    onTapAadir(context);
                                  })
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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

  /// Navigates to the carritoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carritoScreen.
  onTapAadir(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carritoScreen);
  }
}
