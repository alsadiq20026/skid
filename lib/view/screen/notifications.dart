import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Card(
              elevation: 7,
              child: ListTile(
                title: Text(
                  "order id : #1343",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromARGB(107, 76, 175, 79),
                      ),
                      child: Text(
                        "status",
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    Text("driver is going to pickup\n your package")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
