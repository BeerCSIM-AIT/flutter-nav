import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    var product = Get.arguments;
    return Scaffold(
      appBar: AppBar(title: const Text("Product Page")),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ID: ${product['id']}"),
            Text("Name: ${product['name']}"),
            const SizedBox(height: 20),
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
