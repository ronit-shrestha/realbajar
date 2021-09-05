import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/gallery/gallerybuilder.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: RealBajarDrawer(),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              title: Text('Gallery'),
              centerTitle: true,
              floating: true,
              actions: [AppbarBackButton().appbarBackButton(context)],
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CupertinoSlidingSegmentedControl(
                    backgroundColor: Colors.grey.shade200,
                    thumbColor: Colors.white,
                    groupValue: groupValue,
                    children: {
                      0: Text('All'),
                      1: Text('For Rent'),
                      2: Text('For Sale')
                    },
                    onValueChanged: (groupValue) {
                      setState(() {
                        this.groupValue = groupValue;
                      });
                    }),
              ),
              SizedBox(height: 25),
              if (groupValue == 0) GalleryBuilder()
            ]))
          ],
        ));
  }
}
