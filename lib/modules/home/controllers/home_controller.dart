import 'package:crud_getx/models/collaborator_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxList<CollaboratorModel> _contributors = <CollaboratorModel>[].obs;

  List<CollaboratorModel> get contributors => _contributors;

  final GlobalKey<FormState> form = GlobalKey<FormState>();
  TextEditingController nameEC = TextEditingController();
  TextEditingController jobEC = TextEditingController();

  @override
  void dispose() {
    nameEC;
    jobEC;
    super.dispose();
  }

  void getOrderContributors() {
    _contributors.sort((CollaboratorModel first, CollaboratorModel last) =>
        last.timestamp.compareTo(first.timestamp));
  }

  void saveCollaborator() {
    if (form.currentState!.validate()) {
      _contributors.add(
        CollaboratorModel(
          id: UniqueKey().toString(),
          name: nameEC.text,
          job: jobEC.text,
          timestamp: DateTime.now(),
        ),
      );

      clearForms();
      getOrderContributors();

      Get.back();
    }
  }

  void updateCollaborator(CollaboratorModel collaborator) {
    final int index = _contributors.indexWhere(
      (CollaboratorModel el) => el.id == collaborator.id,
    );

    _contributors[index] = CollaboratorModel(
      id: collaborator.id,
      name: nameEC.text,
      job: jobEC.text,
      timestamp: DateTime.now(),
    );

    clearForms();
    getOrderContributors();

    Get.back();
  }

  void deleteCollaborator(CollaboratorModel collaborator) {
    _contributors.remove(collaborator);
  }

  void goToSavePage() {
    Get.toNamed('/save');
    clearForms();
  }

  void goToEditPage(CollaboratorModel collaborator) {
    Get.toNamed('/edit', arguments: collaborator);
    clearForms();
  }

  void clearForms() {
    nameEC.clear();
    jobEC.clear();
  }
}
