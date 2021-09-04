import 'package:flutter/material.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/drawer/drawer.dart';

class NewsDetails extends StatelessWidget {
  final String newstitle;
  NewsDetails(this.newstitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEWS'),
        centerTitle: true,
        actions: [AppbarBackButton().appbarBackButton(context)],
      ),
      drawer: RealBajarDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
              Text(
                newstitle,
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(height: 20),
              Image.asset('assets/backgroundimage.jpg'),
            ]),
      ),
    );
  }
}
