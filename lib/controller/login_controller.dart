import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skid/core/services/services.dart';
import 'package:skid/link_api.dart';

abstract class LoginController extends GetxController {
  login();
}

class LoginControllerImp extends LoginController {
  Dio dio = Dio();
  TextEditingController? email;
  TextEditingController? password;
  late SharedPreferences sharedPreferences;
  // sharedPreferences Get.put(sharedPreferences
  GlobalKey<FormState> formstatelogin = GlobalKey<FormState>();

  @override
  login() async {
    if (formstatelogin.currentState!.validate()) {
      sharedPreferences = await SharedPreferences.getInstance();
      var response = await dio.post(AppLink.login,
          options: Options(contentType: "application/json"),
          data: {
            "email": email!.text.toString(),
            "password": password!.text.toString()
          });
      if (response.statusCode == 200) {
        sharedPreferences.setString("id", response.data['data']['_id']);
        sharedPreferences.setString("name", response.data['data']['name']);
        sharedPreferences.setString("email", response.data['data']['email']);
        sharedPreferences.setString("token", response.data['token']);
        sharedPreferences.setInt("step", 2);
        Get.offNamed("/home");
      } else {
        Get.defaultDialog(title: "Login Faield");
      }
    } else {}
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }
}
