import 'package:project/core/class/curd.dart';
import 'package:project/link_api.dart';

class ResendCodeData {
  Curd curd;
  ResendCodeData(this.curd);

  postData(String email) async {
    var response = await curd.postData(AppLink.resendCode, {"email": email});
    return response.fold((l) => l, (r) => r);
  }
}
