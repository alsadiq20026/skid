import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/core/services/services.dart';
import 'package:skid/link_api.dart';

abstract class SignupController extends GetxController {
  signup();
}

class SignupControllerImp extends SignupController {
  Dio dio = Dio();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  Myservice myservice = Get.put(Myservice());
  GlobalKey<FormState> formstateSignup = GlobalKey<FormState>();

  @override
  signup() async {
    if (formstateSignup.currentState!.validate()) {

      var response = await dio.post(AppLink.signup,

          options: Options(contentType: "application/json"),
          data: {
            
            "email": email.text.toString(),
            "password": password.text.toString(),
            "name": name.text.toString()
          });
      if (response.statusCode == 201) {
        Get.offNamedUntil("home", (route) => false);
      } else {
        Get.defaultDialog(title: "Signup Faield");
      }
    } else {}
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();
    super.onInit();
  }
}
