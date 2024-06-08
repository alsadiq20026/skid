import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VehicleController extends GetxController {
  assignorder3();
  change(String select);
}

class VehicleControllerImp extends VehicleController {
  TextEditingController vehicletype = TextEditingController();
  String? selected;
  Map orders = {};
  @override
  assignorder3() {
    if (selected!.isNotEmpty) {
      orders.addAll({"vehicletype": selected});
      Get.offNamed("/orderde", arguments: orders);
    } else {
      Get.defaultDialog(title: "Please select type");
    }
  }

  @override
  change(select) {
    selected = select;
    update();
  }

  @override
  void onInit() {
    orders = Get.arguments;
    super.onInit();
  }
}
