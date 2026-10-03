import 'package:project/core/class/stutusrequest.dart';
import 'package:project/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project/core/functions/handlingdata_controller.dart';
import 'package:project/core/services/services.dart';
import 'package:project/data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  LoginData loginData = LoginData(Get.find());
  late TextEditingController email;
  late TextEditingController password;
  StatusRequest? statusRequest = StatusRequest.non;
  MyServices myServices = Get.find();

  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(password.text, email.text);
      print("==================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);.
          myServices.sharedPreferences.setString(
            "email",
            response['data']['users_email'],
          );
          myServices.sharedPreferences.setString(
            "id",
            response['data']['users_id'],
          );
          myServices.sharedPreferences.setString(
            "username",
            response['data']['users_username'],
          );
          myServices.sharedPreferences.setString(
            "name",
            response['data']['users_name'],
          );
          Get.offNamed(AppRoute.home, arguments: {"email": email.text});

          // Get.delete<SignUpControllerImp>();
        } else {
          Get.defaultDialog(
            title: "warning",
            middleText: "email or password not correct",
          );
          statusRequest = StatusRequest.failure;
        }
      } else {}
      update();
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
