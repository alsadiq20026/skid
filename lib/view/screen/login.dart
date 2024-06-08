import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/login_controller.dart';
import 'package:skid/core/function/validinput.dart';
import 'package:skid/core/shared/textform.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Form(
          key: controller.formstatelogin,
          child: ListView(
            children: [
              ClipRRect(
                child: Image.asset(
                  "assets/images/1.png",
                  width: 120,
                  height: 120,
                ),
              ),
              Text(
                "welcome Back to ",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text("SkiD",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Email",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                width: 200,
                child: Textform(
                  mycontroller: controller.email,
                  hint: "Provide a valid Email Address",
                  validator: (p0) => validinput(p0!, 4, 100, "email"),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Password",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                width: 200,
                child: Textform(
                  hint: "Enter Your Password",
                  mycontroller: controller.password,
                  validator: (p0) => validinput(p0!, 8, 24, "password"),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              MaterialButton(
                onPressed: () => controller.login(),
                color: const Color.fromRGBO(7, 154, 73, 1),
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text("Don't have account?  "),
                  InkWell(
                    onTap: () => Get.toNamed("/signup"),
                    child: const Text(
                      "SignUp",
                      style: TextStyle(
                          color: Color.fromRGBO(7, 154, 74, 100), fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
