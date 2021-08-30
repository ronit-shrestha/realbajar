import 'package:flutter/material.dart';
import 'package:realbajar/screens/dropdownbuilder.dart';
import 'package:realbajar/screens/properties/propertydetails.dart';

class DropDownList extends StatelessWidget {
  const DropDownList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controlminarea = TextEditingController();
    TextEditingController _controlmaxarea = TextEditingController();
    TextEditingController _controlkeyword = TextEditingController();
    TextEditingController _controlpropertyid = TextEditingController();
    return Container(
        color: Colors.white,
        child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0).copyWith(bottom: 0),
              child: Table(
                columnWidths: {
                  0: FlexColumnWidth(.4),
                  1: FlexColumnWidth(.01),
                  2: FlexColumnWidth(.4)
                },
                children: [
                  TableRow(children: [
                    Text("Property Status"),
                    Text(''),
                    Text("Property Type")
                  ]),
                  TableRow(children: [
                    DropDownBuilder(['Any', 'For Rent', 'For Sale']),
                    Text(''),
                    DropDownBuilder([
                      'Any',
                      'Commercial',
                      '- Office',
                      '- Shop',
                      'Land',
                      'Residential',
                      '- Apartment',
                      '- Apartment Builing',
                      '- Condominium',
                      '- Single Family Home',
                      '- Villa'
                    ])
                  ]),
                  TableRow(children: [Text(""), Text(''), Text("")]),
                  TableRow(
                      children: [Text("All Locations"), Text(''), Text("")]),
                  TableRow(children: [
                    DropDownBuilder([
                      'Any',
                      'Kathmandu',
                      'Dharan',
                      'Itahari',
                      'Butwal',
                      'Surkhet',
                      'Pokhara',
                      'Biratnagar'
                    ]),
                    Text(''),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PropertyDetails('Id here')));
                      },
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ])
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ExpansionTile(
                iconColor: Colors.orange,
                textColor: Colors.orange,
                expandedAlignment: Alignment.bottomRight,
                title: Text('Advanced Search',
                    style: TextStyle(fontSize: 12), textAlign: TextAlign.end),
                children: [
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(.4),
                      1: FlexColumnWidth(.01),
                      2: FlexColumnWidth(.4)
                    },
                    children: [
                      TableRow(children: [
                        Text("Min Price"),
                        Text(''),
                        Text("Max Price")
                      ]),
                      TableRow(children: [
                        DropDownBuilder([
                          'Any',
                          'Rs 1,000',
                          'Rs 5,000',
                          'Rs 10,000',
                          'Rs 50,000',
                          'Rs 100,000',
                          'Rs 200,000',
                          'Rs 300,000',
                          'Rs 400,000',
                          'Rs 500,000',
                          'Rs 600,000',
                          'Rs 700,000',
                          'Rs 800,000',
                          'Rs 900,000',
                          'Rs 1,000,000',
                          'Rs 1,500,000',
                          'Rs 2,000,000',
                          'Rs 2,500,000',
                          'Rs 5,000,000'
                        ]),
                        Text(''),
                        DropDownBuilder([
                          'Any',
                          'Rs 5,000',
                          'Rs 10,000',
                          'Rs 50,000',
                          'Rs 100,000',
                          'Rs 200,000',
                          'Rs 300,000',
                          'Rs 400,000',
                          'Rs 500,000',
                          'Rs 600,000',
                          'Rs 700,000',
                          'Rs 800,000',
                          'Rs 900,000',
                          'Rs 1,000,000',
                          'Rs 1,500,000',
                          'Rs 2,000,000',
                          'Rs 2,500,000',
                          'Rs 5,000,000',
                          'Rs 10,000,000'
                        ]),
                      ]),
                      TableRow(children: [Text(""), Text(''), Text("")]),
                      TableRow(children: [
                        Text("Min Beds"),
                        Text(''),
                        Text("Min Baths")
                      ]),
                      TableRow(children: [
                        DropDownBuilder([
                          'Any',
                          '1',
                          '2',
                          '3',
                          '4',
                          '5',
                          '6',
                          '7',
                          '8',
                          '9',
                          '10'
                        ]),
                        Text(''),
                        DropDownBuilder([
                          'Any',
                          '1',
                          '2',
                          '3',
                          '4',
                          '5',
                          '6',
                          '7',
                          '8',
                          '9',
                          '10'
                        ])
                      ]),
                      TableRow(children: [Text(""), Text(''), Text("")]),
                      TableRow(children: [
                        Text("Min Garages"),
                        Text(''),
                        Text("Agent")
                      ]),
                      TableRow(children: [
                        DropDownBuilder([
                          'Any',
                          '1',
                          '2',
                          '3',
                          '4',
                          '5',
                          '6',
                          '7',
                          '8',
                          '9',
                          '10'
                        ]),
                        Text(''),
                        DropDownBuilder(['Any', 'Team Realbajar', 'John Doe'])
                      ]),
                      TableRow(children: [Text(""), Text(''), Text("")]),
                      TableRow(children: [
                        Text("Min Area (sq ft)"),
                        Text(''),
                        Text("Max Area (sq ft)")
                      ]),
                      TableRow(children: [
                        customtextfields(_controlminarea),
                        Text(''),
                        customtextfields(_controlmaxarea)
                      ]),
                      TableRow(children: [Text(""), Text(''), Text("")]),
                      TableRow(children: [
                        Text("Keyword"),
                        Text(''),
                        Text("Property ID")
                      ]),
                      TableRow(children: [
                        customtextfields(_controlkeyword),
                        Text(''),
                        customtextfields(_controlpropertyid)
                      ]),
                      TableRow(children: [Text(""), Text(''), Text("")]),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }

  customtextfields(control) {
    return TextFormField(
      controller: control,
      decoration: InputDecoration(focusColor: Colors.orange, hintText: 'Any'),
    );
  }
}
