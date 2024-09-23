  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
import 'package:getx_with_mvvm/res/localization/languages.dart';
  import 'package:getx_with_mvvm/res/routes/routes.dart';

  void main() {
    runApp(const MainApp());
  }

  class MainApp extends StatelessWidget {
    const MainApp({super.key});

    @override
    Widget build(BuildContext context) {
      return GetMaterialApp(
        translations: Languages(),
        locale: Locale('en', 'US'),
        fallbackLocale: Locale('en', 'US'),
        getPages: AppRoutes.appRoutes(),
      );
    }
  }
