import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => {Get.toNamed("/notifications")},
            icon: const Icon(Icons.notifications_none_outlined),
            iconSize: 33,
            color: Color.fromRGBO(121, 165, 142, 1),
          ),
          IconButton(
            onPressed: () => {
              Get.toNamed("/settings"),
            },
            icon: const Icon(Icons.settings),
            iconSize: 33,
            color: Color.fromRGBO(121, 165, 142, 1),
          )
        ],
      ),
      body: !controller.initialized
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Text(
                    "Hi",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  GetBuilder<HomeControllerImp>(
                    init: HomeControllerImp(),
                    builder: (controller) => Text(
                      controller.name == null ? "Josh" : controller.name!,
                      style: TextStyle(
                          color: Color.fromARGB(168, 158, 158, 158),
                          fontSize: 37),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Text(
                    "What Are You Sending Today?",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(119, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.local_pizza_outlined,
                              size: 100,
                              color: Color.fromARGB(38, 71, 181, 75),
                            ),
                            Text(
                              "Food Delivery",
                              style: TextStyle(
                                  color: Color.fromARGB(119, 158, 158, 158),
                                  fontSize: 19),
                            )
                          ],
                        ),
                      ),
                      Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(119, 158, 158, 158)),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.shopping_cart_outlined,
                                size: 100,
                                color: Color.fromARGB(38, 71, 181, 75),
                              ),
                              Text(
                                "Groceries",
                                style: TextStyle(
                                    color: Color.fromARGB(119, 158, 158, 158),
                                    fontSize: 19),
                              )
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => Get.offNamed("/send"),
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/13.jpg",
                                height: 120,
                                width: 150,
                                fit: BoxFit.fitWidth,
                              ),
                              Text("Parcel")
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
    );
  }
}
