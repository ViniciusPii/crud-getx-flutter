import 'package:crud_getx/models/collaborator_model.dart';
import 'package:crud_getx/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SaveCollaborator extends GetView<HomeController> {
  const SaveCollaborator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salvar'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Cadastrar'),
          onPressed: () {
            controller.saveCollaborator(
              CollaboratorModel(name: 'Deu bom', job: 'Amigão'),
            );

            Get.back();
          },
        ),
      ),
    );
  }
}
