import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/dropdownlist.dart';
import 'package:realbajar/screens/featuredproperties/featuredproperties.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controlname = TextEditingController();
    var _controlemail = TextEditingController();
    var _controlnumber = TextEditingController();
    var _controlmessage = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTACT US'),
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
            ListTile(
              title: Text(
                'Real Homes',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.width * .05),
              ),
            ),
            Table(
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
            SizedBox(height: 25),
            Divider(color: Colors.orange),
            ListTile(
                tileColor: Colors.grey.shade200,
                title: Text(
                  'SEND US A MESSAGE',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.width * .05),
                )),
            SizedBox(height: 20),
            _name(_controlname),
            _email(_controlemail),
            _number(_controlnumber),
            _message(_controlmessage),
            MaterialButton(
              color: Colors.orange,
              onPressed: () {},
              child: Text(
                'Send Message',
                style: TextStyle(color: Colors.white),
              ),
            ),
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
          ],
        ),
      ),
    );
  }

  _name(_controlname) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controlname,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelText: 'Name',
            labelStyle: TextStyle(color: Colors.orange),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  _email(_controlemail) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controlemail,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.orange),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  _number(_controlnumber) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controlnumber,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelText: 'Phone Number',
            labelStyle: TextStyle(color: Colors.orange),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  _message(_controlmessage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controlmessage,
        maxLines: 8,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelText: 'Message',
            labelStyle: TextStyle(color: Colors.orange),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }
}
