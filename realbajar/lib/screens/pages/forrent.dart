import 'package:flutter/material.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/dropdownlist.dart';
import 'package:realbajar/screens/propertylisting.dart';

class ForRent extends StatelessWidget {
  const ForRent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: RealBajarDrawer(),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              title: Text('For Rent'),
              centerTitle: true,
              actions: [AppbarBackButton().appbarBackButton(context)],
              floating: true,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
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
            ]))
          ],
        ));
  }
}
