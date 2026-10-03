import 'package:project/core/class/curd.dart';
import 'package:project/link_api.dart';

class SignupData {
  Curd curd;
  SignupData(this.curd);
  postdata(String username, String password, String email, String name) async {
    var response = await curd.postData(AppLink.signUp, {
      "username": username,
      "password": password,
      "email": email,
      "name": name,
    });
    return response.fold((l) => l, (r) => r);
  }
}
