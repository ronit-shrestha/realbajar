import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/contact/sendamessage.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/dropdownlist.dart';
import 'package:realbajar/screens/featuredproperties/featuredproperties.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: RealBajarDrawer(),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text('CONTACT US'),
            centerTitle: true,
            actions: [AppbarBackButton().appbarBackButton(context)],
            floating: true,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              title: Text(
                'Real Homes',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.width * .05),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(.15),
                  1: FlexColumnWidth(.3),
                  2: FlexColumnWidth(.9)
                },
                children: [
                  TableRow(children: [
                    FaIcon(FontAwesomeIcons.phoneAlt, size: size.width * .04),
                    Text('Phone:'),
                    Text('1-222-333-5555')
                  ]),
                  TableRow(children: [
                    FaIcon(FontAwesomeIcons.mobile, size: size.width * .04),
                    Text('Mobile:'),
                    Text('1-222-333-5555')
                  ]),
                  TableRow(children: [
                    FaIcon(FontAwesomeIcons.fax, size: size.width * .04),
                    Text('Fax:'),
                    Text('1-222-333-5555')
                  ]),
                  TableRow(children: [
                    FaIcon(FontAwesomeIcons.mailchimp, size: size.width * .04),
                    Text('Email:'),
                    Text('info@yourwebsite.com')
                  ]),
                  TableRow(children: [
                    FaIcon(FontAwesomeIcons.locationArrow,
                        size: size.width * .04),
                    Text('Address:'),
                    Text('3015 Grand Ave, Coconut Grove, Marrick Way, FL 12345')
                  ]),
                ],
              ),
            ),
            SizedBox(height: 25),
            Divider(color: Colors.orange),
            SendAMessage(),
            Divider(
              height: 70,
            ),
            ListTile(
              tileColor: Colors.grey.shade700,
              trailing: Icon(Icons.search, color: Colors.white),
              title: Text(
                'Find Your Home',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            DropDownList(),
            FeaturedProperties()
          ]))
        ],
      ),
    );
  }
}
