import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/app/clients/json_api_client.dart';
import 'package:flutter_qpay_client/app/data/models/login_response_model.dart';
import 'package:flutter_qpay_client/app/data/models/post_sms_response_model.dart';
import 'package:flutter_qpay_client/core/freezed/network_error.dart';
import 'package:flutter_qpay_client/core/freezed/result.dart';
import 'package:flutter_qpay_client/core/network/layers/network_executer.dart';
import 'package:flutter_qpay_client/data/data_keys.dart';
import 'package:flutter_qpay_client/data/data_methods.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<Result<LoginResponseModel, NetworkError>> loginOrRegister({
    required String phoneNumber,
  }) async {
    return NetworkExecuter.execute<LoginResponseModel, LoginResponseModel>(
      route: PlaceHolderClient.login('+7 ' + phoneNumber),
      responseType: LoginResponseModel(),
    );
  }

  Future<Result<PostSmsResponseModel, NetworkError>> postSmsCode({
    required String? phoneNumber,
    required String? verificationCode,
  }) async {
    return NetworkExecuter.execute<PostSmsResponseModel, PostSmsResponseModel>(
      route: PlaceHolderClient.postSmsCode(phoneNumber!, verificationCode!),
      responseType: PostSmsResponseModel(),
    );
  }

  Future<Result<dynamic, NetworkError>> preFilling(String clientName) async {
    return NetworkExecuter.execute(route: PlaceHolderClient.preFilling(clientName));
  }






  // Future<String?> toRegisterOrLogin(String phoneNumber) async {
  //   final url = Uri.parse("$base_url/api/auth/login-or-register");
  //   var headers = {
  //     'Accept': 'application/json',
  //     'Content-Type': 'application/json'
  //   };
  //   var request = http.Request('POST', url);
  //   request.body = json.encode({
  //     "phone": "$phoneNumber",
  //     "roles": ["client"]
  //   });
  //   request.headers.addAll(headers);

  //   http.StreamedResponse response = await request.send();

  //   if (response.statusCode == 200) {
  //     print(await response.stream.bytesToString());

  //     return "success";
  //   } else {
  //     print("Error on auth");
  //     print(response.reasonPhrase);
  //     var err = await response.stream.bytesToString();
  //     return json.decode(err)["message"];
  //   }
  //   // var headers = {
  //   //   'Accept': 'application/json',
  //   //   'Content-Type': 'application/json'
  //   // };
  //   // var url = Uri.parse('$base_url/api/auth/login-or-register');
  //   // // var request =
  //   // //     http.Request('POST', url);

  //   // var data = {"phone": "$phoneNumber",
  //   //   "roles": "client"};

  //   // http.Response response = await http.post(Uri.parse('$base_url/api/auth/login-or-register?phone=7$phoneNumber&role=client'), headers: headers);

  //   // if (response.statusCode == 200) {
  //   //   // print(await response.stream.bytesToString());
  //   //   return "success";
  //   // } else {
  //   //   print("Error on auth");
  //   //   print(response.reasonPhrase);
  //   //   // var err = await response.stream.bytesToString();
  //   //   print(response.statusCode);
  //   //   log("${json.decode(response.body)}");
  //   //   return json.decode(response.body)["message"];
  //   // }
  // }

  // Future<String?> toSendVerificationCode(
  //     String phoneNumber, String code) async {
  //   var headers = {
  //     'Accept': 'application/json',
  //     // 'Content-Type': 'application/json'
  //   };
  //   var url = Uri.parse('$base_url/api/auth/login-or-register/verify-code');
  //   // var request = http.Request('POST', url);
  //   var data = {
  //       'phone': '$phoneNumber',
  //       "verification_code": "$code",
  //       "role": "client",
  //     };
  //   // request.headers.addAll(headers);

  //   // http.StreamedResponse response = await request.send();
  //   http.Response response = await http.post(url, headers: headers, body: data);

  //   if (response.statusCode == 200) {
  //     // print(await response.stream.bytesToString());
  //     print(response.statusCode);
  //     saveClientToken(json.decode(response.body)[kToken]);
  //     return "success";
  //   } else {
  //     print(response.reasonPhrase);
  //     print(response.statusCode);
  //     return json.decode(response.body)["message"];
  //   }
  // }

  // Future<String?> toFillName(String name) async {
  //   var url = Uri.parse('$base_url/api/client/pre-filling?name=$name');
  //   String? token = await getToken();
  //   var headers = {
  //     'Accept': 'application/json',
  //     'Authorization': 'Bearer $token',
  //   };

  //   final http.Response response = await http.post(url, headers: headers);

  //   if (response.statusCode == 200) {
  //     print("Success");
  //     print("NAME SAVED: $name");
  //     return "success";
  //   } else {
  //     print(response.reasonPhrase);
  //     print("Error status code: ${response.statusCode}");
  //   }
  // }
}
