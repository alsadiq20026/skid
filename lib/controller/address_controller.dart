import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

abstract class AddressController extends GetxController {
  assignorder2();
  getcurrentlocation();
}

class AdressControllerImp extends AddressController {
  TextEditingController sendername = TextEditingController();
  TextEditingController senderphon = TextEditingController();
  TextEditingController recievername = TextEditingController();
  TextEditingController recieverPhone = TextEditingController();
  GlobalKey<FormState> addresskey = GlobalKey<FormState>();
  int? distance;
  int? delprice;

  Map orders = {};
  @override
  assignorder2() {
    if (addresskey.currentState!.validate()) {
      orders.addAll({
        "recieveraddress": {
          "reclat": 21.1333332,
          "reclong": 12.2222,
          "recievername": recievername.text.toString(),
          "recieverPhone": recieverPhone.text.toString()
        },
        "senderaddress": {
          "senlat": 211.1333332,
          "senlong": 122.2222,
          "sendername": sendername.text.toString(),
          "senderPhone": senderphon.text.toString()
        },
      });

      distance = 40;
      delprice = distance! * 100;
      orders['price'] = delprice;
      Get.offNamed("/vehicle", arguments: orders);
      print(orders);
    }
  }

  @override
  void onInit() {
    orders = Get.arguments;
    getcurrentlocation();
    super.onInit();
  }

  @override
  getcurrentlocation() async {
    bool serviceenabled;
    LocationPermission permission;
    serviceenabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceenabled) {
      return Future.error("Location service are disabled");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition();
      print("======================================");
      print(position.latitude);
      print(position.longitude);
      print("======================================");
    }
  }
}
