import 'package:flutter/material.dart';
import 'package:acuamattic_store/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:acuamattic_store/presentation/login_screen/login_screen.dart';
import 'package:acuamattic_store/presentation/home_container_screen/home_container_screen.dart';
import 'package:acuamattic_store/presentation/tienda_screen/tienda_screen.dart';
import 'package:acuamattic_store/presentation/peces_descripcion_screen/peces_descripcion_screen.dart';
import 'package:acuamattic_store/presentation/carrito_screen/carrito_screen.dart';
import 'package:acuamattic_store/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';
  static const String loginScreen = '/login_screen';
  static const String homePage = '/home_page';
  static const String homeContainerScreen = '/home_container_screen';
  static const String tiendaScreen = '/tienda_screen';
  static const String homePecesFavoritosPage = '/home_peces_favoritos_page';
  static const String pecesDescripcionScreen = '/peces_descripcion_screen';
  static const String carritoScreen = '/carrito_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashscreenScreen: (context) => SplashscreenScreen(),
    loginScreen: (context) => LoginScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    tiendaScreen: (context) => TiendaScreen(),
    pecesDescripcionScreen: (context) => PecesDescripcionScreen(),
    carritoScreen: (context) => CarritoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
