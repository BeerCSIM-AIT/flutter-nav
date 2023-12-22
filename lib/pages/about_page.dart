import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    var token = Get.parameters['token'];
    return Scaffold(
      appBar: AppBar(title: const Text("About Page")),
      body: Center(
        child: Column(
          children: [
            Text(token ?? "<TOKEN>"),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
