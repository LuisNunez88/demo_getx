// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

import '../../presentation/pages/main/main_page.dart';
import '../../presentation/pages/pages.dart';
import 'routes.dart';

class RouteHelper {
  static const String splash = '/splash';
  static getSplashRoute() => splash;
  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const LoginPage()),
  ];
}

class AppPages {
  AppPages._();

  static final INITIAL = Routes.root.path;

  static final routes = [
    GetPage(
      name: Routes.root.path,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.home.path,
      page: () => const MainPage(),
    ),
    GetPage(
      name: Routes.penkas.path,
      page: () => const MyPenkasPage(),
    ),
    GetPage(
      name: Routes.explore.path,
      page: () => const ExplorePage(),
    ),
    GetPage(
      name: Routes.createPenka.path,
      page: () => const CreatePenkaPage(),
    ),
  ];
}
