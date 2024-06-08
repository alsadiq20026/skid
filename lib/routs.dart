import 'package:get/get.dart';
import 'package:skid/core/middleware/mymiddleware.dart';
import 'package:skid/view/screen/address.dart';
import 'package:skid/view/screen/home.dart';
import 'package:skid/view/screen/notifications.dart';
import 'package:skid/view/screen/orderde.dart';
import 'package:skid/view/screen/packegdet.dart';
import 'package:skid/view/screen/payment.dart';
import 'package:skid/view/screen/phonnumber.dart';
import 'package:skid/view/screen/sendparcel.dart';
import 'package:skid/view/screen/settings.dart';
import 'package:skid/view/screen/signup.dart';
import 'package:skid/view/screen/takepict.dart';
import 'package:skid/view/screen/vehicle.dart';
import 'view/screen/login.dart';

List<GetPage<dynamic>>? routs = [
  GetPage(
    name: "/login",
    page: () => const Login(),
    middlewares: [Mymiddelware()],
  ),
  GetPage(
    name: "/signup",
    page: () => const Signup(),
  ),
  GetPage(
    name: "/home",
    page: () => const HomePage(),
  ),
  GetPage(
    name: "/send",
    page: () => const Sendparcel(),
  ),
  GetPage(
    name: "/packegdet",
    page: () => const Packegdet(),
  ),
  GetPage(
    name: "/takepict",
    page: () => const Takepict(),
  ),
  GetPage(
    name: "/vehicle",
    page: () => const Vehicle(),
  ),
  GetPage(
    name: "/address",
    page: () => Address(),
  ),
  GetPage(
    name: "/orderde",
    page: () => const Orderde(),
  ),
  GetPage(
    name: "/payment",
    page: () => Payment(),
  ),
  GetPage(
    name: "/phonnumber",
    page: () => const Phonnumber(),
  ),
  GetPage(
    name: "/notifications",
    page: () => const Notifications(),
  ),
  GetPage(
    name: "/settings",
    page: () => const Settings(),
  ),
];
