import 'package:crud_getx/models/collaborator_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxList<CollaboratorModel> contributors = <CollaboratorModel>[].obs;

  @override
  void onInit() {
    getContributors();
    super.onInit();
  }

  void getContributors() {
    List<CollaboratorModel> contributorsResult = [
      CollaboratorModel(
        name: 'Vinicius',
        job: 'Dev Flutter',
      ),
      CollaboratorModel(
        name: 'Marcos',
        job: 'Dev BFF',
      ),
      CollaboratorModel(
        name: 'Gustavo',
        job: 'Dev Android',
      ),
      CollaboratorModel(
        name: 'Felipe',
        job: 'Dev iOS',
      ),
    ];

    contributors.value = contributorsResult;
  }

  void saveCollaborator(CollaboratorModel collaborator) {
    contributors.add(collaborator);
  }

  void deleteCollaborator(CollaboratorModel collaborator) {
    contributors.remove(collaborator);
  }
}
