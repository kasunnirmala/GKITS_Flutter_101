import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home_screen/home_screen_controller.dart';
import 'package:flutter_getx/util/routes.dart';
import 'package:flutter_getx/widgets/link_button_widget.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: controller.backgroundColor.value,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => controller.changeBackgroudColor(),
                icon: const Icon(Icons.color_lens))
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                children: [
                  LinkButtonWidget(
                    title: "Link 1",
                    onTap: () => Get.toNamed(RouterClass.link, parameters: {
                      "title": "Link 1",
                      "description": "Description 1"
                    }),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  LinkButtonWidget(
                    title: "Link 2",
                    onTap: () => Get.toNamed(RouterClass.link, parameters: {
                      "title": "Link 2",
                      "description": "Description 2"
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
