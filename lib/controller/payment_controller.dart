import 'package:get/get.dart';

abstract class PaymentController extends GetxController {
  goto();
}

class PaymentControllerImp extends PaymentController {
  Map orders = {};

  @override
  void onInit() {
    orders = Get.arguments;
    super.onInit();
  }

  @override
  goto() {
    Get.offNamed("/orderde", arguments: orders);
  }
}
