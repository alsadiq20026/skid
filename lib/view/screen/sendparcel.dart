import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/sendparcel_controller.dart';
import 'package:skid/core/function/validinput.dart';
import 'package:skid/core/shared/textform.dart';

class Sendparcel extends StatelessWidget {
  const Sendparcel({super.key});

  @override
  Widget build(BuildContext context) {
    SendParcelControllerImp controller = Get.put(SendParcelControllerImp());
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
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              Text(
                "Provide Moer Detaiels About Your Parcel.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Hight Of Packeg",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                child: Textform(
                  mycontroller: controller.hight,
                  hint: "Hight In Inches ",
                  keyboardtype: TextInputType.number,
                  validator: (p0) => validinput(p0!, 1, 100, "number"),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Width Of Packeg",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                child: Textform(
                  mycontroller: controller.width,
                  hint: "Width In Inches ",
                  keyboardtype: TextInputType.number,
                  validator: (p0) => validinput(p0!, 1, 100, "number"),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Weight Of Packeg",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                          width: 200,
                          child: Textform(
                            mycontroller: controller.weight,
                            hint: "Weight In KG ",
                            keyboardtype: TextInputType.number,
                            validator: (p0) =>
                                validinput(p0!, 1, 100, "number"),
                          )),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quantity",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      SizedBox(
                        width: 100,
                        child: Textform(
                          hint: "Quantity",
                          mycontroller: controller.quantity,
                          validator: (p0) => validinput(p0!, 1, 100, "number"),
                          keyboardtype: TextInputType.number,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const InkWell(
                child: Row(
                  children: [
                    Text(
                      "Add Another Parcel ",
                    ),
                    Icon(
                      Icons.add_box_outlined,
                      color: Color.fromRGBO(7, 154, 73, 0.823),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              MaterialButton(
                onPressed: () {
                  controller.assignorder();
                },
                color: const Color.fromRGBO(7, 154, 73, 1),
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text("Next",
                    style: Theme.of(context).textTheme.labelMedium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
