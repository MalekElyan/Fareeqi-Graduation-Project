import 'package:project/core/class/curd.dart';
import 'package:project/link_api.dart';

class CheackEmailData {
  Curd curd;
  CheackEmailData(this.curd);
  postdata(String email) async {
    var response = await curd.postData(AppLink.cheackemail, {"email": email});
    return response.fold((l) => l, (r) => r);
  }
}
