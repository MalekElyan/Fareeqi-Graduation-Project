import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/main/footer_contrller.dart';
import 'package:project/view/screen/main/main_footer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNavControllerImp());

    return GetBuilder<BottomNavControllerImp>(
      builder: (controller) {
        return Scaffold(
          body: controller.pages[controller.currentIndex],
          bottomNavigationBar: const MainBottomNavBar(),
        );
      },
    );
  }
}
