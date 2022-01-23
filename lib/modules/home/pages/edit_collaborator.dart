import 'package:crud_getx/components/text_field_component.dart';
import 'package:crud_getx/models/collaborator_model.dart';
import 'package:crud_getx/modules/home/controllers/home_controller.dart';
import 'package:crud_getx/theme/app_dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditCollaborator extends GetView<HomeController> {
  EditCollaborator({Key? key}) : super(key: key);

  final CollaboratorModel collaborator = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(collaborator.name),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppDimension.dm_16,
            horizontal: AppDimension.dm_24,
          ),
          child: Form(
            key: controller.form,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFieldComponent(
                  label: 'Nome',
                  controller: controller.nameEC = TextEditingController(
                    text: collaborator.name,
                  ),
                ),
                const SizedBox(height: AppDimension.dm_16),
                TextFieldComponent(
                  label: 'Cargo',
                  controller: controller.jobEC = TextEditingController(
                    text: collaborator.job,
                  ),
                ),
                const SizedBox(height: AppDimension.dm_24),
                ElevatedButton(
                  child: const Text('Editar'),
                  onPressed: () => controller.updateCollaborator(collaborator),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
