import 'package:flutter/material.dart';
import 'package:realbajar/screens/addproperty/addproperty.dart';
import 'package:realbajar/screens/agencies/agencies.dart';
import 'package:realbajar/screens/agents/agents.dart';
import 'package:realbajar/screens/contact/contact.dart';
import 'package:realbajar/screens/gallery/gallery.dart';
import 'package:realbajar/screens/homepage/homepage.dart';
import 'package:realbajar/screens/login/register/login.dart';
import 'package:realbajar/screens/news/news.dart';
import 'package:realbajar/screens/pages/forrent.dart';
import 'package:realbajar/screens/pages/forsale.dart';
import 'package:realbajar/screens/pages/singlefamilyhome.dart';
import 'package:realbajar/screens/pages/villa.dart';
import 'package:realbajar/screens/properties/properties.dart';

class RealBajarDrawer extends StatelessWidget {
  const RealBajarDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey.shade700,
        width: MediaQuery.of(context).size.width * .6,
        child: Drawer(
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [
              ListTile(
                selectedTileColor: Colors.orange,
                title: Text('Home'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }), (route) => false);
                },
              ),
              ListTile(
                selectedTileColor: Colors.orange,
                title: Text('Properties'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return Properties();
                  }), (route) => false);
                },
              ),
              ListTile(
                selectedTileColor: Colors.orange,
                title: Text('Agents'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return Agents();
                  }), (route) => false);
                },
              ),
              ListTile(
                selectedTileColor: Colors.orange,
                title: Text('Agencies'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return Agencies();
                  }), (route) => false);
                },
              ),
              ListTile(
                selectedTileColor: Colors.orange,
                title: Text('News'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return News();
                  }), (route) => false);
                },
              ),
              ListTile(
                selectedTileColor: Colors.orange,
                title: Text('Gallery'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return Gallery();
                  }), (route) => false);
                },
              ),
              ExpansionTile(
                textColor: Colors.orange,
                iconColor: Colors.orange,
                title: Text('Pages'),
                children: [
                  ListTile(
                    selectedTileColor: Colors.orange,
                    title: Text('For Rent'),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => ForRent()),
                          (route) => false);
                    },
                  ),
                  ListTile(
                    selectedTileColor: Colors.orange,
                    title: Text('For Sale'),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) {
                        return ForSale();
                      }), (route) => false);
                    },
                  ),
                  ListTile(
                    selectedTileColor: Colors.orange,
                    title: Text('Villa'),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Villa()),
                          (route) => false);
                    },
                  ),
                  ListTile(
                    selectedTileColor: Colors.orange,
                    title: Text('Single Family Home'),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingleFamilyHome()),
                          (route) => false);
                    },
                  ),
                  ListTile(
                    selectedTileColor: Colors.orange,
                    title: Text('FAQs'),
                  ),
                  ListTile(
                    selectedTileColor: Colors.orange,
                    title: Text('Columns'),
                  ),
                  ListTile(
                    selectedTileColor: Colors.orange,
                    title: Text('Typography'),
                  ),
                ],
              ),
              ListTile(
                selectedTileColor: Colors.orange,
                title: Text('Contact'),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return Contact();
                  }), (route) => false);
                },
              ),
              ListTile(
                selectedTileColor: Colors.orange,
                title: Text('Login/ Register'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
              ListTile(
                selectedTileColor: Colors.orange,
                title: Text('Add Your Property/ies'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddProperty()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
