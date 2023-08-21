import 'package:acuamattic_store/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgRideviceline,
      activeIcon: ImageConstant.imgRideviceline,
      type: BottomBarEnum.Rideviceline,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgImage6,
      activeIcon: ImageConstant.imgImage6,
      type: BottomBarEnum.Image6,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIonfishoutline,
      activeIcon: ImageConstant.imgIonfishoutline,
      type: BottomBarEnum.Ionfishoutline,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVector,
      activeIcon: ImageConstant.imgVector,
      type: BottomBarEnum.Vector,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup61,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].isPng == true
                  ? null
                  : bottomMenuList[index].icon,
              imagePath: bottomMenuList[index].isPng == true
                  ? bottomMenuList[index].icon
                  : null,
              height: getVerticalSize(39),
              width: getHorizontalSize(40),
              radius: BorderRadius.circular(
                getHorizontalSize(13),
              ),
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].isPng == true
                  ? null
                  : bottomMenuList[index].activeIcon,
              imagePath: bottomMenuList[index].isPng == true
                  ? bottomMenuList[index].activeIcon
                  : null,
              height: getVerticalSize(36),
              width: getHorizontalSize(35),
              color: appTheme.whiteA700,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Rideviceline,
  Image6,
  Ionfishoutline,
  Vector,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isPng = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
