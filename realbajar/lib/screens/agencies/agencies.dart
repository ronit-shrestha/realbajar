import 'package:flutter/material.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/agentlisting.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/dropdownlist.dart';

class Agencies extends StatelessWidget {
  const Agencies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // extendBody: true,
        appBar: AppBar(
          actions: [AppbarBackButton().appbarBackButton(context)],
          title: Text('AGENCIES'),
          centerTitle: true,
          elevation: 0,
        ),
        drawer: RealBajarDrawer(),
        body: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            AgentListing(),
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
            DropDownList()
          ],
        ),
      ),
    );
  }
}
