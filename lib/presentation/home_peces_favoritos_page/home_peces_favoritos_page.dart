import '../home_peces_favoritos_page/widgets/gridusertext_item_widget.dart';
import '../home_peces_favoritos_page/widgets/listusertext_item_widget.dart';
import 'package:acuamattic_store/core/app_export.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_circleimage.dart';
import 'package:acuamattic_store/widgets/app_bar/appbar_image.dart';
import 'package:acuamattic_store/widgets/app_bar/custom_app_bar.dart';
import 'package:acuamattic_store/widgets/custom_drop_down.dart';
import 'package:acuamattic_store/widgets/custom_elevated_button.dart';
import 'package:acuamattic_store/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePecesFavoritosPage extends StatelessWidget {
  HomePecesFavoritosPage({Key? key})
      : super(
          key: key,
        );

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
                right: 20,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
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
                      alignment: Alignment.bottomCenter,
                      children: [
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
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: getVerticalSize(247),
                            child: ListView.separated(
                              padding: getPadding(
                                left: 5,
                                top: 158,
                              ),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  width: getHorizontalSize(10),
                                );
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return ListusertextItemWidget();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Row(
                      children: [
                        CustomElevatedButton(
                          width: getHorizontalSize(111),
                          text: "Agua Dulce",
                          leftIcon: Container(
                            margin: getMargin(
                              right: 10,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCloseBlack900,
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          width: getHorizontalSize(111),
                          text: "América",
                          margin: getMargin(
                            left: 12,
                          ),
                          leftIcon: Container(
                            margin: getMargin(
                              right: 10,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCloseBlack900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 21,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(177),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(22),
                        crossAxisSpacing: getHorizontalSize(22),
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return GridusertextItemWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
