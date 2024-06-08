// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/core/services/services.dart';

class Mymiddelware extends GetMiddleware {
  @override
  int? get priority => 1;

  Myservice myservice = Get.put(Myservice());

  @override
  RouteSettings? redirect(String? route) {
    if (myservice.pharedpreferences.getInt("step") == 2) {
      return const RouteSettings(name: "/home");
    } else {
      return const RouteSettings(name: "/login");
    }
  }
}
