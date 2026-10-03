import 'package:project/core/class/curd.dart';
import 'package:project/link_api.dart';

class VerifyCodeSignupData {
  Curd curd;
  VerifyCodeSignupData(this.curd);
  postdata(String email, String verifycode) async {
    var response = await curd.postData(AppLink.verifycodesignup, {
      "email": email,
      "name": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
