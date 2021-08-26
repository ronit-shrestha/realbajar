import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/drawer/drawer.dart';

class PropertyDetails extends StatelessWidget {
  final String propertyid;
  PropertyDetails(this.propertyid);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [AppbarBackButton().appbarBackButton(context)],
      ),
      drawer: RealBajarDrawer(),
      body: ListView(
        children: [
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height * .3),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Text(
                        'text $i',
                        style: TextStyle(fontSize: 16.0),
                      ));
                },
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text('Tokha, Kathmandu, Bagmati Pradesh, Nepal'),
          Container(
              color: Colors.grey.shade700,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'For Sale',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          Container(
              color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Starting Rs 2,600,000',
                  style: TextStyle(color: Colors.white),
                ),
              )),
          SizedBox(height: 20),
          Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'RB-1351- property',
                  style: TextStyle(color: Colors.grey.shade800),
                ),
              )),
          Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '3 Anna',
                  style: TextStyle(color: Colors.grey.shade800),
                ),
              )),
          Container(
              color: Colors.grey.shade200,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '1 Garage',
                    style: TextStyle(color: Colors.grey.shade800),
                  ))),
          Text('Details Here'),
          ListTile(
              tileColor: Colors.grey.shade600,
              title: Text(
                'Share this',
                style: TextStyle(color: Colors.white),
              )),
          ListTile(
            tileColor: Colors.grey.shade200,
            title: Text(
              'Facebook',
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ),
          ListTile(
              tileColor: Colors.grey.shade200,
              title: Text(
                'Twitter',
                style: TextStyle(color: Colors.grey.shade700),
              )),
          ListTile(
              tileColor: Colors.grey.shade200,
              title: Text(
                'WhatsApp',
                style: TextStyle(color: Colors.grey.shade700),
              )),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade200, border: Border.all()),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Mortgage Loan Calculator'),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
