import 'package:flutter/material.dart';
import 'package:realbajar/screens/homepage/homepage.dart';

class AppbarBackButton {
  appbarBackButton(context) {
    return IconButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context) {
            return HomePage();
          }), (route) => false);
        },
        icon: Icon(Icons.arrow_back_rounded));
  }
}
