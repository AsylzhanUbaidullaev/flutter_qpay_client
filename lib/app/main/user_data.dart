import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_qpay_client/data/data_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  void setToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
    print('token set: $token');
  }

  void deleteToken() async {
    print('delete token called');
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', "");
  }

  Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString('token');
    return value ?? "";

    // return 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNDk3YTY5YTU4ZDc2NjZiYTc1NjJkNjliYjc2ODc0ZGUyYjhkODZmNmFmYzhmMjhlNmEyZDE0YjVlM2MyZjVlNmI1MTJlNjdmM2I3MGIzZjYiLCJpYXQiOjE2Mzg0Mzg2MTAuODUyNTM4MSwibmJmIjoxNjM4NDM4NjEwLjg1MjU0MzEsImV4cCI6MTY2OTk3NDYxMC44MzMwOTc5LCJzdWIiOiIyNCIsInNjb3BlcyI6W119.XIygau6dRzQVzZtEszGjJapNRyUCtymk7p-EUHDypPuKEWO7EZArXolfD0dZHn7SSJz8CMYPwCAT5GZo_itC_aH-392n4brKwzkpagIJ7Arnu_De2ERZb_mOKI5CyqNnqLg2wZdlyXFZ_PeQL9pfZXGRWIkmAzE4OsSqDOuEjm0Q-ELJi1BsWQcxi0R2tQufB5BmKHS3YbTaWzk_ECy9mhee-SfAjnk65E1i2Lhs0OxDG_AkJ0ZzTZ8juN5HO9ncE1UQU-mL9ESMhCXFb6xfnfKdN2LRXN7Y7eAvvQiTOvGNND-bhlTYnpBd3-R6VVra4GPlbms2r2-BZCWSvwu7d1jGx4rX0jvjjU6ghO_Lba1SxCEPLQ08IRrxkp8Ruys01TAuq9JUzXzyiJyjlbt4M72cmdTmQBc__NxCjxWQkvt8QhyWgXYTCUbu_-DvhcbJuH9HSVf4MBBEoe311F8vtGDnwFT1hzQsvqsgLvocKn8XpkmpcGx0_bDlV_ThgPShAx_bAXW4UNTdGJSGEi2zU9Ci-uoro50eH6oty_rEZFGLz4VgXmnDupKlljWfDgqnvkIXODcMElmJm1f0A8tq6w--w7ooqDPVj-Ra0ZzRj1p72uHo5BnxRwiLPsxoKkqJDZ0lXxMA4VfQIuyh4TAerNnLq-WjtxxytdnvKsyNsts';
  }

  Future<void> setPrefillingRequired(bool prefilling) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('prefilling', prefilling);
    log('Prefilling set: $prefilling');
  }

  Future<bool> getPrefillingRequired() async {
    var prefs = await SharedPreferences.getInstance();
    var prefilling = prefs.getBool('prefilling');
    log('Prefilling got: $prefilling');
    return prefilling ?? true;
  }

  setCityData(int? id, String? city) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(kCityName, city!);
  prefs.setInt(kCityId, id!);
  print("New city is: ${prefs.getString(kCityName)}");
}

Future<String?> getCityName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(kCityName);
}
getCityId() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt(kCityId);
}
}
