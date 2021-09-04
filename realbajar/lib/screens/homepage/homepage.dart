import 'package:flutter/material.dart';
import 'package:realbajar/api/httpservices.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/dropdownlist.dart';
import 'package:realbajar/screens/featuredproperties/featuredproperties.dart';
import 'package:realbajar/screens/news/newsbuilder.dart';
import 'package:realbajar/screens/propertylisting.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String proterystatusvalue = 'Any';
  String propertytypevalue = 'All Types';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        drawer: RealBajarDrawer(),
        body: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            Container(
                height: 300,
                child: FutureBuilder(
                    future: HttpServices().gethttpservices(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return
                            // Center(
                            //   child: CircularProgressIndicator(
                            //     color: Colors.black,
                            //   ),
                            // );
                            ListView.builder(
                                itemCount: snapshot.data.length,
                                itemBuilder: (context, i) {
                                  return Text(snapshot.data[i].date.toString());
                                });
                      } else {
                        return Center(
                            child: CircularProgressIndicator(
                          color: Colors.red,
                        ));
                      }
                    })),
            section1(size, context),
            section2(),
            PropertyListing(),
            section3(),
            section5(),
            section4()
          ],
        ),
      ),
    );
  }

  section1(size, context) {
    return Container(
      child: Stack(
        children: [
          Transform.scale(
            alignment: Alignment.bottomCenter,
            scale: 1.3,
            child: Image.asset(
              'assets/backgroundimage.jpg',
            ),
          ),
          Opacity(
            opacity: .5,
            child: Container(
              color: Colors.black,
              height: MediaQuery.of(context).size.height * .3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SelectableText(
                  'Welcome To Our Awesome Real Estate Website',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 10),
                SelectableText(
                  'Looking For A Dream House To Settle? Start With Our Properties Search!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                DropDownList(),
                SizedBox(height: 50)
              ],
            ),
          ),
        ],
      ),
    );
  }

  section2() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SelectableText(
            'We are Offering the Best Real Estate Deals',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              // color: Colors.grey.shade700
            ),
          ),
          SizedBox(height: 10),
          SelectableText(
            'Look at our Latest listed properties and check out the prices and facilites on them. We have already sold more than 500 Lands and Buildings and we are still going at very good pace. We would love you to look into these properties and we hope that you will find something matchable to your needs ',
            // style: TextStyle(color: Colors.grey.shade700),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  section3() {
    final section3style = TextStyle(color: Colors.white);
    return Container(
      color: Colors.lightBlueAccent,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Amazing Features',
                style: section3style.copyWith(
                    fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(
              'Some amazing features of Real Bajar.',
              style: section3style,
            ),
            SizedBox(height: 20),
            Image.asset('assets/backgroundimage.jpg', height: 100, width: 100),
            SizedBox(height: 40),
            Text(
              'Easliy Submitting Property',
              style: section3style.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'You can easily post your land and building here and also can feature to sale faster',
              style: section3style,
            ),
            SizedBox(height: 20),
            Image.asset('assets/backgroundimage.jpg', height: 100, width: 100),
            SizedBox(height: 40),
            Text(
              'Pool of Seller and Buyer',
              style: section3style.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'We have large number of sellers and buyers so it is easy to sell your property faster and also get property of your choice without any hustle',
              style: section3style,
            ),
            SizedBox(height: 20),
            Image.asset('assets/backgroundimage.jpg', height: 100, width: 100),
            SizedBox(height: 40),
            Text(
              'Compare Properties',
              style: section3style.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'You can compare the properties on thier features and cost and choose the one that you find most suitable and profitable to you',
              style: section3style,
            ),
          ],
        ),
      ),
    );
  }

  section4() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'News Posts',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Check out some recent news posts'),
              SizedBox(height: 30),
              NewsBuilder()
            ],
          ),
        ),
      ),
    );
  }

  section5() {
    return FeaturedProperties();
  }
}
