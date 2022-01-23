import 'package:crud_getx/modules/home/modules/home_module.dart';
import 'package:crud_getx/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme(context).defaultTheme,
      getPages: [
        ...HomeModule().routes,
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
