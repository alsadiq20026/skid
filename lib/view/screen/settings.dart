import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skid/controller/settings_controller.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    SettingControllerImp controller = Get.put(SettingControllerImp());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ListTile(
              leading: IconButton(onPressed: () => {}, icon: Icon(Icons.edit)),
              title: Text(
                "Email",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: Text(
                  controller.myservice.pharedpreferences.getString("name")!,
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            ListTile(
              leading: IconButton(onPressed: () => {}, icon: Icon(Icons.edit)),
              title: Text(
                "Password",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: Text("**********",
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            InkWell(
              onTap: () => {
                controller.myservice.pharedpreferences.setInt("step", 1),
                Get.offNamed("/login")
              },
              child: Text("Log Out"),
            )
          ],
        ),
      ),
    );
  }
}
