import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/orderde_controller.dart';
import 'package:skid/controller/sendparcel_controller.dart';

class Orderde extends StatelessWidget {
  const Orderde({super.key});

  @override
  Widget build(BuildContext context) {
    OrderdeControllerImp controller = Get.put(OrderdeControllerImp());
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "size of package : ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "${controller.orders['package'][0]['height']} X ${controller.orders['package'][0]['width']}",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Weight : ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      controller.orders['package'][0]['weight'],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quantity : ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      controller.orders['package'][0]['quantity'],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "vehicle type : ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      controller.orders['vehicletype'],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reciever phone number : ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      controller.orders['recieveraddress']['recieverPhone'],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment Method : ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "Cash",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bill : ",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "\$4 for one KM",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            MaterialButton(
              onPressed: () => {
                // print(controller.orders)
                controller.finalizorder()
              },
              color: const Color.fromRGBO(7, 154, 73, 1),
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Finalize Order   ",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
