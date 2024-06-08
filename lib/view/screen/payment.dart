import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/payment_controller.dart';
import 'package:skid/controller/sendparcel_controller.dart';

class Payment extends StatelessWidget {
  Payment({super.key});
  PaymentControllerImp controller = Get.put(PaymentControllerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () => Get.offNamedUntil("/home", (route) => false),
            child: Text("Cancel Order     "),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            RadioListTile(
              value: false,
              groupValue: false,
              onChanged: (value) => print,
              title: Text(
                "Cashe",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RadioListTile(
              value: true,
              groupValue: false,
              onChanged: (value) => print,
              title: Text(
                "Cash",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Bill",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text("${controller.orders['price']}",
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(
              height: 60,
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
