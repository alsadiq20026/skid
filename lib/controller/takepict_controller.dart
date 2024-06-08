import 'package:get/get.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:skid/core/function/uploadfile.dart';

abstract class TakepictController extends GetxController {
  goto();
}

class TakepictControllerImp extends TakepictController {
  Map orders = {};
  Media? file;
  @override
  void onInit() {
    orders = Get.arguments;
    super.onInit();
  }

  @override
  goto() async {
    file = await imageuploadcamera();
    print(file!.path);
    if (file != null) {
      Get.offNamed("/packegdet", arguments: orders);
    } else {}
  }
}
