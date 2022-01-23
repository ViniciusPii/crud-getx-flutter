import 'package:crud_getx/models/collaborator_model.dart';
import 'package:crud_getx/modules/home/bindings/home_bindings.dart';
import 'package:crud_getx/modules/home/pages/edit_collaborator.dart';
import 'package:crud_getx/modules/home/pages/home_page.dart';
import 'package:crud_getx/modules/home/pages/save_collaborator.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomeModule {
  CollaboratorModel? collaboratorModel;

  final List<GetPage<WidgetBuilder>> routes = [
    GetPage<WidgetBuilder>(
      name: '/',
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage<WidgetBuilder>(
      name: '/save',
      page: () => const SaveCollaborator(),
      binding: HomeBindings(),
    ),
    GetPage<WidgetBuilder>(
      name: '/edit',
      page: () => EditCollaborator(),
      binding: HomeBindings(),
    ),
  ];
}
