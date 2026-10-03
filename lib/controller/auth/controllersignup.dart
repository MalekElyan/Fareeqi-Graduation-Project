import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project/core/class/curd.dart';
import 'package:project/core/class/stutusrequest.dart';
import 'package:project/core/constant/routes.dart';
import 'package:project/core/functions/handlingdata_controller.dart';
import 'package:project/data/datasource/remote/auth/signup.dart';

abstract class Controllersignup extends GetxController {
  SignUp();
  goToVerifyPage();
}

class ControllersignupImp extends Controllersignup {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  StatusRequest? statusRequest = StatusRequest.non;
  SignupData testData = SignupData(Get.find());
  List<dynamic> data = [];

  @override
  void onInit() {
    statusRequest = StatusRequest.non;
    name = TextEditingController();
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  SignUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await testData.postdata(
        username.text,
        password.text,
        email.text,
        name.text,
      );
      print("==================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          print("username = ${username.text}");
          print("name = ${name.text}");
          print("email = ${email.text}");
          print("password = ${password.text}");
          // data.addAll(response['data']);
          Get.toNamed(
            AppRoute.verfiyCodeSignUp,
            arguments: {"email": email.text},
          );

          // Get.delete<SignUpControllerImp>();
        } else {
          Get.defaultDialog(
            title: "warning",
            middleText: "phone number or email is exit",
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    name.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToVerifyPage() {
    Get.toNamed(AppRoute.verfiyCodeSignUp, arguments: {"email": email.text});
  }
}
