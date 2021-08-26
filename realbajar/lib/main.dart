import 'package:flutter/material.dart';

import 'screens/homepage/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.grey.shade700),
        textTheme: TextTheme(
            bodyText2: TextStyle(
          color: Colors.grey.shade700,
        )),
        primaryColor: Colors.grey.shade700,
      ),
    );
  }
}
