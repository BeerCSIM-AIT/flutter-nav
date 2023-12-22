import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var product = {'id': 999, 'name': "Chocolate"};
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed("/about?token=9999"),
              child: const Text("About"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed("/product", arguments: product),
              child: const Text("Product"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed("/contact"),
              child: const Text("Contact"),
            ),
          ],
        ),
      ),
    );
  }
}
