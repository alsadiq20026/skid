import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class HomeController extends GetxController {}

class HomeControllerImp extends HomeController {
  SharedPreferences? sharedPreferences;
  String? name;
  @override
  void onInit() async {
    sharedPreferences = await SharedPreferences.getInstance();
    name = sharedPreferences!.getString("name");
    update();
    super.onInit();
  }
}
