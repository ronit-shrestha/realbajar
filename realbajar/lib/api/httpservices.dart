import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:realbajar/api/propertyapi.dart';

class HttpServices {
  Future gethttpservices() async {
    var httpservice;
    var response =
        await http.get(Uri.https('realbajar.com', '/wp-json/wp/v2/properties'));
    if (response.statusCode == 200) {
      httpservice = realbajarFromJson(response.body);
    } else
      throw 'Error in HttpServices';

    return httpservice;
  }
}
