import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SendParcelController extends GetxController {
  assignorder();
}

class SendParcelControllerImp extends SendParcelController {
  TextEditingController hight = TextEditingController();
  TextEditingController width = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController inpackage = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  Map orders = {};
  @override
  assignorder() {
    if (formstate.currentState!.validate()) {
      orders.assignAll({
        "package": [
          {
            "height": hight.text.toString(),
            "width": width.text.toString(),
            "weight": weight.text.toString(),
            "quantity": quantity.text.toString(),
            "inpackage":inpackage.text.toString()
          }
        ],
      });
    Get.offNamed("/takepict", arguments: orders);
    }
    update();
    print(orders);
  }
}
