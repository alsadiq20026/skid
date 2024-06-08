import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/address_controller.dart';
import 'package:skid/core/function/validinput.dart';
import 'package:skid/core/shared/textform.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    AdressControllerImp controller = Get.put(AdressControllerImp());

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
          key: controller.addresskey,
          child: ListView(
            children: [
              Text(
                "Where is package being delivered to ?",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Name Of Reciever",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Textform(
                mycontroller: controller.recievername,
                validator: (p0) => validinput(p0!, 5, 100, "phon"),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Reciever phone number",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),

              // InternationalPhoneNumberInput(
              //   onInputChanged: (value) => print,
              //   initialValue:
              //       PhoneNumber(dialCode: "249", phoneNumber: "123456789"),
              //   countries: ["Sudan"],
              //   keyboardType: TextInputType.phone,
              // ),
              Textform(
                mycontroller: controller.recieverPhone,
                keyboardtype: TextInputType.phone,
                validator: (p0) => validinput(p0!, 9, 15, "phone"),
              ),
              SizedBox(
                height: 50,
              ),

              Text(
                "Provide the pickup location ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Name Of Sender",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Textform(
                mycontroller: controller.sendername,
                validator: (p0) => validinput(p0!, 3, 100, "name"),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Sender phone number",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),

              Textform(
                mycontroller: controller.senderphon,
                validator: (p0) => validinput(p0!, 8, 15, "phone"),
              ),
              SizedBox(
                height: 60,
              ),
              MaterialButton(
                onPressed: () {
                  controller.assignorder2();
                  // controller.getcurrentlocation();
                },
                color: const Color.fromRGBO(7, 154, 73, 1),
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Next",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
