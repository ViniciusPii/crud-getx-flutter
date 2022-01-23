import 'package:crud_getx/modules/home/home_bindings.dart';
import 'package:crud_getx/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomeModule {
  final List<GetPage<WidgetBuilder>> routes = [
    GetPage<WidgetBuilder>(
      name: '/',
      page: () => const HomePage(),
      binding: HomeBindings(),
    )
  ];
}
