import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_app/app/utils/theme_util.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: lightThemeData,
      darkTheme: darkThemeData,
    ),
  );
}
