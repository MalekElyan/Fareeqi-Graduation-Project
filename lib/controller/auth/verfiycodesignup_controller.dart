import 'dart:async';
import 'package:get/get.dart';
import 'package:project/core/class/curd.dart';
import 'package:project/core/class/stutusrequest.dart';
import 'package:project/core/constant/routes.dart';
import 'package:project/core/functions/handlingdata_controller.dart';
import 'package:project/data/datasource/remote/auth/resendcode.dart';
import 'package:project/data/datasource/remote/auth/verifycodesignup.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verificationCode);
  startTimer();
  resendCode();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  String? email;

  Timer? timer;
  int secondsRemaining = 60;
  bool canResend = false;
  StatusRequest? statusRequest = StatusRequest.non;
  VerifyCodeSignupData verifycodesignup = VerifyCodeSignupData(Get.find());

  String get timerText {
    final minutes = (secondsRemaining ~/ 60).toString().padLeft(2, '0');
    final seconds = (secondsRemaining % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  void startTimer() {
    timer?.cancel();

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        secondsRemaining--;
        update();
      } else {
        canResend = true;
        timer.cancel();
        update();
      }
    });
  }

  resendCode() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await ResendCodeData(Curd()).postData(email!);

    print("==================== Controller $response ");
    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        secondsRemaining = 60;
        canResend = false;
        startTimer();

        Get.defaultDialog(
          title: "success",
          middleText: "تم إعادة إرسال رمز التحقق",
        );
      } else {
        Get.defaultDialog(
          title: "warning",
          middleText: "تعذر إعادة إرسال الرمز",
        );
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(String verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await VerifyCodeSignupData(
      Curd(),
    ).postdata(email!, verificationCode);
    print("==================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(AppRoute.successSignUp);

        // Get.delete<SignUpControllerImp>();
      } else {
        Get.defaultDialog(title: "تحذير", middleText: "الرمز غير صحيح");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
    statusRequest = StatusRequest.non;
    email = Get.arguments['email'];
    final args = Get.arguments;
    if (args is Map<String, dynamic>) {
      email = args["email"] ?? "";
    }

    startTimer();
  }
}
