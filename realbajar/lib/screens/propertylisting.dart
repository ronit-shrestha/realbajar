import 'package:flutter/material.dart';

class PropertyListing extends StatelessWidget {
  const PropertyListing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, item) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade700)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Florida 5, Pinecrest, FL',
                      // style: TextStyle(color: Colors.grey.shade700),
                    ),
                    SizedBox(height: 10),
                    Image.asset('assets/backgroundimage.jpg'),
                    ListTile(
                      tileColor: Colors.teal.shade300,
                      title: Text(
                        "Price",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        'Elegant retrear in a quiet Coral Gables setting. This home'),
                    SizedBox(height: 10),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'More Details >>>',
                          style: TextStyle(color: Colors.grey.shade700),
                        )),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [Icon(Icons.square_foot), Text('3800')],
                        ),
                        Row(
                          children: [Icon(Icons.bed), Text('4 Bedroom')],
                        ),
                        Row(
                          children: [Icon(Icons.bathtub), Text('3 Bathroom')],
                        ),
                        Row(
                          children: [Icon(Icons.garage), Text('2 Garage')],
                        ),
                      ],
                    ),
                    SizedBox(height: 25)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
