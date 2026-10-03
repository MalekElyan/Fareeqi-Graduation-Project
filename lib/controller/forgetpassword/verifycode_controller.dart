import 'package:project/core/class/curd.dart';
import 'package:project/core/class/stutusrequest.dart';
import 'package:project/core/constant/routes.dart';

import 'package:get/get.dart';
import 'package:project/core/functions/handlingdata_controller.dart';
import 'package:project/data/datasource/remote/forgetpassword/verifycode.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;
  String? email;
  VerifyCodeForgetData verifyCodeForgetData = VerifyCodeForgetData(Get.find());
  StatusRequest? statusRequest = StatusRequest.non;
  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await VerifyCodeForgetData(
      Curd(),
    ).postdata(email!, verifycode);
    print("==================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.offNamed(AppRoute.resetPassword, arguments: {"email": email});

        // Get.delete<SignUpControllerImp>();
      } else {
        Get.defaultDialog(title: "تحذير", middleText: "الرمز غير صحيح");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
