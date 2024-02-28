import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, }) async {
    Map<String, String> headers = {};

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw ('there is error in statusCode ${response.statusCode} ');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    return jsonEncode(response.body);
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    return jsonEncode(response.body);
  }
}
