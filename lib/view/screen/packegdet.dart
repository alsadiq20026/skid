import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/packegdet_controller.dart';
import 'package:skid/core/shared/textform.dart';

class Packegdet extends StatelessWidget {
  const Packegdet({super.key});

  @override
  Widget build(BuildContext context) {
    PackegdetcControllerImp controller = Get.put(PackegdetcControllerImp());

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
              "What Is In The Packege ?",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "What Is In The Packege ?",
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),SizedBox(
              width: 200,
              child: Textform()),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Additional Note (Optinal)",
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLines: 10,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
              ),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                fillColor: Color.fromARGB(40, 219, 219, 219),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            MaterialButton(
              onPressed: () {
                controller.goto();
              },
              color: const Color.fromRGBO(7, 154, 73, 1),
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text("Next   ",
                  style: Theme.of(context).textTheme.labelMedium),
            ),
          ],
        ),
      ),
    );
  }
}
