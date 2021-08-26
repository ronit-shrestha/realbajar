import 'package:flutter/material.dart';
import 'package:realbajar/screens/news/newsdetails.dart';

class NewsBuilder extends StatelessWidget {
  const NewsBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.separated(
        separatorBuilder: (context, i) => Divider(height: 50),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, i) {
          return Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade700)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Real Estate trends to watch out for during Covid - 19 second wave',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * .06),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/backgroundimage.jpg',
                    height: size.height * .4,
                  ),
                  SizedBox(height: 20),
                  Text('June 5, 2017'),
                  SizedBox(height: 20),
                  Text(
                    'While there were signs of significant revival in the property market in the first quater of 2021, a momentary halt in any upward trajectory is being senn now',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    leading: Icon(Icons.supervised_user_circle),
                    title: Text('By Admin'),
                    trailing: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NewsDetails('Title Here')));
                      },
                      child: Text(
                        'Read More',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.lightBlueAccent,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
