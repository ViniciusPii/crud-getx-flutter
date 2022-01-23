import 'package:crud_getx/models/collaborator_model.dart';
import 'package:crud_getx/modules/home/controllers/home_controller.dart';
import 'package:crud_getx/theme/app_dimension.dart';
import 'package:crud_getx/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de trabalhadores'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimension.dm_16,
            horizontal: AppDimension.dm_24,
          ),
          child: Column(
            children: <Widget>[
              Text(
                'Colaboradores no projeto',
                style: AppFonts.size_3(),
              ),
              const SizedBox(height: AppDimension.dm_16),
              Expanded(
                child: Obx(
                  () => ListView.separated(
                    itemBuilder: (_, int index) {
                      final CollaboratorModel collaborator = controller.contributors[index];

                      return ListTile(
                        title: Text(collaborator.name),
                        subtitle: Text(collaborator.job),
                        trailing: IconButton(
                          onPressed: () => controller.deleteCollaborator(collaborator),
                          icon: const Icon(Icons.delete),
                        ),
                      );
                    },
                    separatorBuilder: (_, __) => const Divider(),
                    itemCount: controller.contributors.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/save'),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
