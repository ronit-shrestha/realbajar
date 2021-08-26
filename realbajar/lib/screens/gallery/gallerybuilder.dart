import 'package:flutter/material.dart';

class GalleryBuilder extends StatelessWidget {
  const GalleryBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GridView.count(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(
          10,
          (index) => Center(
                  child: Column(children: [
                Image.asset(
                  'assets/backgroundimage.jpg',
                  height: size.height * .2,
                ),
                SizedBox(height: 8),
                Text('Florida 5, Pinecrest, FL')
              ]))),
    );
  }
}
