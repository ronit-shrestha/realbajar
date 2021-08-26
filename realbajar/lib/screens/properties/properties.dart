import 'package:flutter/material.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/featuredproperties/featuredproperties.dart';
import 'package:realbajar/screens/propertylisting.dart';

import '../dropdownlist.dart';

class Properties extends StatelessWidget {
  const Properties({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('Properties List'),
          centerTitle: true,
          actions: [AppbarBackButton().appbarBackButton(context)],
        ),
        drawer: RealBajarDrawer(),
        body: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            PropertyListing(),
            SizedBox(height: 25),
            ListTile(
                title: Text(
                  'Find Your Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * .05,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.search, color: Colors.white),
                tileColor: Colors.grey.shade700),
            SizedBox(height: 15),
            DropDownList(),
            FeaturedProperties()
          ],
        ));
  }
}
