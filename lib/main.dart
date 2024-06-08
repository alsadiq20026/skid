import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/core/middleware/mymiddleware.dart';
import 'package:skid/routs.dart';
import 'package:skid/view/screen/home.dart';
import 'package:skid/view/screen/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
              primary: Color.fromRGBO(7, 154, 74, 100),
              onSurface: Color.fromRGBO(7, 154, 73, 0.823)),
          textTheme: const TextTheme(
              labelMedium: TextStyle(color: Colors.white, fontSize: 17),
              bodyLarge: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w500),
              displayLarge: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 54, 54, 54),
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
              bodyMedium: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 49, 49, 49),
                  fontWeight: FontWeight.w500),
              bodySmall: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 124, 124, 124)))),
      unknownRoute: GetPage(
        middlewares: [Mymiddelware()],
        name: "/",
        page: () => const HomePage(),
      ),
      getPages: routs,
      
    );
  }
}
