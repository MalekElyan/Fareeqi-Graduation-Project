import 'package:project/core/class/curd.dart';
import 'package:project/link_api.dart';

class ResetpasswordData {
  Curd curd;
  ResetpasswordData(this.curd);
  postdata(String email, String password) async {
    var response = await curd.postData(AppLink.resetpassword, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
