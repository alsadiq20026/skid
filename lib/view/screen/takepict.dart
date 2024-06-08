import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/takepict_controller.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:skid/core/function/uploadfile.dart';

class Takepict extends StatelessWidget {
  const Takepict({super.key});

  @override
  Widget build(BuildContext context) {
    TakepictControllerImp controller = Get.put(TakepictControllerImp());

    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () => Get.offNamedUntil("/home", (route) => false),
            child: Text("Cancel Order     "),
          )
        ],
        iconTheme: const IconThemeData(color: Color.fromRGBO(7, 154, 74, 100)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              "Take A picture of your item",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Please Note: ",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "Take A picture of your item close to recognisable object such  as a chair,pen,etc ",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/7.jpg",
              height: 210,
              width: 210,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/8.jpg", height: 210, width: 210),
            const SizedBox(
              height: 80,
            ),
            MaterialButton(
              onPressed: () {
                // imageuploadcamera();
                controller.goto();
              },
              color: const Color.fromRGBO(7, 154, 73, 1),
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text("Take A Picture",
                  style: Theme.of(context).textTheme.labelMedium),
            ),
          ],
        ),
      ),
    );
  }
}
