import 'package:flutter/material.dart';
import 'package:realbajar/screens/properties/propertydetails.dart';

class FeaturedProperties extends StatelessWidget {
  const FeaturedProperties({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade800,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              Image.asset(
                'assets/backgroundimage.jpg',
                width: double.infinity,
              ),
              Card(
                color: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    'FOR SALE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ]),
            SizedBox(height: 20),
            Text(
              '11 Anna Jagga ma Baneko Bangalow matra jagga ko mulya ma',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * .05,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rs 24,800,000',
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: size.width * .05,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Residental, Villa',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * .04,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      MaterialButton(
                        color: Colors.orange,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PropertyDetails('propertyid here')));
                        },
                        child: Text(
                          'More Details',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.photo, color: Colors.white),
                            Text(
                              'All Photos',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Kalanki 3 aana ma baneko naya Ghar turunta bikri ma',
                style: TextStyle(color: Colors.grey)),
            Divider(
              height: 50,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.ac_unit,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Text('4', style: TextStyle(color: Colors.grey)),
                        Text('Sq Ft', style: TextStyle(color: Colors.grey))
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.bed, color: Colors.grey),
                    Column(
                      children: [
                        Text('4', style: TextStyle(color: Colors.grey)),
                        Text('Bedrooms', style: TextStyle(color: Colors.grey))
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.bathroom,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Text('4', style: TextStyle(color: Colors.grey)),
                        Text('Bathrooms', style: TextStyle(color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
