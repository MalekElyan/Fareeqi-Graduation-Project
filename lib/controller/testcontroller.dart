// import 'package:project/core/class/stutusrequest.dart';
// import 'package:project/data/datasource/remote/test_data.dart';
// import 'package:project/test.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_instance/src/extension_instance.dart';

// late StatusRequest statusRequest;
// List<dynamic> data = []; //++
// TestData testData = TestData(Get.find());

// getData() async {
//   statusRequest = StatusRequest.loading;
//   var response = await testData.getData();
//   print("========================= Controller $response");
//   statusRequest = handlingData(response);
//   if (StatusRequest.success == statusRequest) {
//     if (response['status'] == "success") {
//       data.addAll(response['data']);
//     } else {
//       statusRequest = StatusRequest.failure;

//       // في حال فشل الاستجابة
//     }
//   }
//   update();
// }

// @override
// void onInit() {
//   getData();
//   super.onInit();
// }
