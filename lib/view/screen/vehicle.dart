import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/sendparcel_controller.dart';
import 'package:skid/controller/vehicle_controller.dart';

class Vehicle extends StatelessWidget {
  const Vehicle({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VehicleControllerImp());

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
        padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
        child: GetBuilder<VehicleControllerImp>(
            builder: (controller) => ListView(
                  children: [
                    Text(
                      "Select A vehicle type",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Card(
                      elevation: 0.0,
                      child: Row(
                        children: [
                          Radio(
                            value: "Bicycle",
                            groupValue: controller.selected,
                            onChanged: (value) => controller.change(value!),
                          ),
                          Image.asset(
                            "assets/images/9.jpg",
                            height: 130,
                            width: 130,
                          ),
                          Column(
                            children: [
                              Text(
                                "Bicycle delivery",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    Card(
                      elevation: 0.0,
                      child: Row(
                        children: [
                          Radio(
                            value: "Motorbike",
                            groupValue: controller.selected,
                            onChanged: (value) => controller.change(value!),
                          ),
                          Image.asset(
                            "assets/images/10.jpg",
                            height: 130,
                            width: 130,
                          ),
                          Column(
                            children: [
                              Text(
                                "Motorbike delivery",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    Card(
                      elevation: 0.0,
                      child: Row(
                        children: [
                          Radio(
                            value: "Car",
                            groupValue: controller.selected,
                            onChanged: (value) => controller.change(value!),
                          ),
                          Image.asset(
                            "assets/images/11.jpg",
                            height: 130,
                            width: 130,
                          ),
                          Column(
                            children: [
                              Text(
                                "Car delivery",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    Card(
                      elevation: 0.0,
                      child: Row(
                        children: [
                          Radio(
                            value: "Car-Van",
                            groupValue: controller.selected,
                            onChanged: (value) => controller.change(value!),
                          ),
                          Image.asset(
                            "assets/images/12.jpg",
                            height: 130,
                            width: 130,
                          ),
                          Column(
                            children: [
                              Text(
                                "Car-Van delivery",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    MaterialButton(
                      onPressed: () {
                        controller.assignorder3();
                      },
                      color: const Color.fromRGBO(7, 154, 73, 1),
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text("Next   ",
                          style: Theme.of(context).textTheme.labelMedium),
                    ),
                  ],
                )),
      ),
    );
  }
}
