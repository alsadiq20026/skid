import 'package:flutter/material.dart';

class Phonnumber extends StatelessWidget {
  const Phonnumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        width: double.infinity,
        height: 300,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "     Enter your Phone Number",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                      width: 110,
                      height: 43,
                      child: DropdownMenu(
                        inputDecorationTheme: InputDecorationTheme(
                            border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        )),
                        initialSelection: "1",
                        width: 100,
                        dropdownMenuEntries: [
                          DropdownMenuEntry(value: Text("1"), label: "949"),
                          DropdownMenuEntry(value: Text("2"), label: "2"),
                          DropdownMenuEntry(value: Text("3"), label: "3"),
                          DropdownMenuEntry(value: Text("4"), label: "4"),
                        ],
                      )),
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: TextFormField(
                      style: const TextStyle(fontSize: 16),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "لا يمكن ان يكون هذا الحقل فارغاً";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(40, 219, 219, 219),
                        filled: true,
                        focusColor: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Image.asset(
        "assets/images/2.jpg",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
