import 'package:get/get.dart';

abstract class PackegdetcController extends GetxController {
  goto();
}

class PackegdetcControllerImp extends PackegdetcController {
  Map orders = {};

  @override
  goto() {
    Get.offNamed("/address", arguments: orders);
  }

  @override
  void onInit() {
    orders = Get.arguments;
    super.onInit();
  }
}
