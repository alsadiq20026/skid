import 'package:get/get.dart';
import 'package:skid/core/services/services.dart';

abstract class SettingController extends GetxController {}

class SettingControllerImp extends SettingController {
  Myservice myservice = Get.put(Myservice());
}
