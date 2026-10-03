import 'package:project/controller/testcontroller.dart';
import 'package:project/core/class/stutusrequest.dart';

handlingData(response) {
  if (response is StatusRequest) {
    if (response == StatusRequest.offlineFailure) {
      return StatusRequest.offlineFailure;
    } else {
      return StatusRequest.serverFailure;
    }
  } else {
    return StatusRequest.success;
  }
}
