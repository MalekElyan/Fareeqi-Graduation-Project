import 'package:project/core/class/curd.dart';
import 'package:project/link_api.dart';

class HomeData {
  Curd crud;
  HomeData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.homepage, {});
    return response.fold((l) => l, (r) => r);
  }
}
