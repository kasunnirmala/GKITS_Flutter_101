import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkPage extends StatelessWidget {
  LinkPage({super.key});
  final String title = Get.parameters["title"] ?? "";
  final String description = Get.parameters["description"] ?? "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  description,
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.red,
                  ),
                  child: const Text("Back"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
