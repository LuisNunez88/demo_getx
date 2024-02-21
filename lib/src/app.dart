import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/l10n/translation_service.dart';
import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      title: 'Material App',
      theme: AppTheme().appTheme,
      themeMode: ThemeMode.dark,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // getPages: RouteHelper.routes,
      // routeInformationParser: appRouter.routeInformationParser,
      // routerDelegate: appRouter.routerDelegate,
      // routeInformationProvider: appRouter.routeInformationProvider,
    );
  }
}
