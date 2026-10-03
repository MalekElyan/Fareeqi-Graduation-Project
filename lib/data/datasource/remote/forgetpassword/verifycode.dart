import 'package:project/core/class/curd.dart';
import 'package:project/link_api.dart';

class VerifyCodeForgetData {
  Curd curd;
  VerifyCodeForgetData(this.curd);
  postdata(String email, String verifycode) async {
    var response = await curd.postData(AppLink.verifycode, {
      "email": email,
      "verfiycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
