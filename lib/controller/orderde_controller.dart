import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skid/core/services/services.dart';
import 'package:skid/link_api.dart';

abstract class OrderdeController extends GetxController {
  goto();
  finalizorder();
}

class OrderdeControllerImp extends OrderdeController {
  Map orders = {};
  Dio dio = Dio();
  Myservice myservice = Get.put(Myservice());
  @override
  void onInit() {
    myservice;
    orders = Get.arguments;
    super.onInit();
  }

  @override
  goto() {
    Get.offNamed("/packegdet", arguments: orders);
  }

  @override
  finalizorder() async {
    SharedPreferences sharedPreferences;
    sharedPreferences = await SharedPreferences.getInstance();
    var response = await dio.post(AppLink.addorder,
        data: orders,
        options: Options(contentType: "application/json", headers: {
          "Authorization": "Bearer ${sharedPreferences.getString("token")}"
        }));
    if (response.statusCode == 201) {
      Get.snackbar("success", "order has been added succeffuly",
          backgroundColor: const Color.fromARGB(101, 76, 175, 79),
          barBlur: 1,
          animationDuration: Duration(milliseconds: 800),
          duration: Duration(seconds: 5));
      Get.offNamed("/home");
    } else {
      Get.defaultDialog(title: "field to add order");
    }
  }
}
