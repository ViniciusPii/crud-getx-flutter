import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt counter = 0.obs;

  int addNumber() {
    return counter.value++;
  }
}
