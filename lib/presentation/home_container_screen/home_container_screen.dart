import 'package:acuamattic_store/core/app_export.dart';
import 'package:acuamattic_store/presentation/home_peces_favoritos_page/home_peces_favoritos_page.dart';
import 'package:acuamattic_store/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5001,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePecesFavoritosPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
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
}
