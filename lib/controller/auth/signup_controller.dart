// import 'package:project/core/class/stutusrequest.dart';
// import 'package:project/core/constant/routes.dart';
// import 'package:project/core/functions/handlingdata_controller.dart';
// import 'package:project/data/datasource/remote/auth/signup.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';

// abstract class SignUpController extends GetxController {
//   signUp();
//   goToSignIn();
// }

// class SignUpControllerImp extends SignUpController {
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();

//   late TextEditingController username;
//   late TextEditingController email;
//   late TextEditingController phone;
//   late TextEditingController password;
//   late StatusRequest statusRequest;
//   SignupData testData = SignupData(Get.find());
//   List<dynamic> data = []; //++
//   @override
//   //async +
//   signUp() async {
//     if (formstate.currentState!.validate()) {
//       statusRequest = StatusRequest.loading;
//       var response = await SignupData.postdata(
//         username.text,
//         password.text,
//         email.text,
//         phone.text,
//       );
//       print("==================== Controller $response ");
//       statusRequest = handlingData(response);
//       if (StatusRequest.success == statusRequest) {
//         if (response['status'] == "success") {
//           data.addAll(response['data']);
//           Get.offNamed(AppRoute.verfiyCodeSignUp);
//           // Get.delete<SignUpControllerImp>();
//         } else {
//           Get.defaultDialog(
//             title: "warning",
//             middleText: "phone number or email is exit",
//           );
//           statusRequest = StatusRequest.failure;
//         }
//       }
//       update();
//     } else {}
//   }

//   @override
//   goToSignIn() {
//     Get.offNamed(AppRoute.login);
//   }

//   @override
//   void onInit() {
//     username = TextEditingController();
//     phone = TextEditingController();
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     username.dispose();
//     email.dispose();
//     phone.dispose();
//     password.dispose();
//     super.dispose();
//   }
// }
