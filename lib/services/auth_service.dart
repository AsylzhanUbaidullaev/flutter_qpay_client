import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/data/data_keys.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<String?> toRegisterOrLogin(String phoneNumber) async {
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    };
    var request = http.Request(
        'POST', Uri.parse('$base_url/api/auth/login-or-register'));

    request.body = json.encode({
      "phone": "$phoneNumber",
      "roles": ["client"]
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      return "success";
    } else {
      print(response.reasonPhrase);
    }
  }
}
