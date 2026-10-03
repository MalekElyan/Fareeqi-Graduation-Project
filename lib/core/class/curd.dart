//استقبال وتعامل مع الريكويست والباك اند
//بدي اعرف تفاصيل الكود وشو حيعمل بالظبط

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:project/core/class/stutusrequest.dart';

import 'package:project/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Curd {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkUrl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverFailure);
    }
  }
}
