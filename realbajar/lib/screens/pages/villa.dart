import 'package:flutter/material.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/dropdownlist.dart';
import 'package:realbajar/screens/propertylisting.dart';

class Villa extends StatelessWidget {
  const Villa({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Villa'),
        centerTitle: true,
        actions: [AppbarBackButton().appbarBackButton(context)],
      ),
      drawer: RealBajarDrawer(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          PropertyListing(),
          Divider(height: 75),
          ListTile(
            tileColor: Colors.grey.shade700,
            title: Text('Find Your Home',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            trailing: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15),
          DropDownList()
        ],
      ),
    );
  }
}
