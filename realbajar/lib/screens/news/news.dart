import 'package:flutter/material.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/dropdownlist.dart';
import 'package:realbajar/screens/news/newsbuilder.dart';

class News extends StatelessWidget {
  const News({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: RealBajarDrawer(),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              title: Text('NEWS'),
              centerTitle: true,
              actions: [AppbarBackButton().appbarBackButton(context)],
              floating: true,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              NewsBuilder(),
              Divider(height: 50),
              newssearchbar(),
              Divider(height: 50),
              ListTile(
                tileColor: Colors.grey.shade700,
                title: Text(
                  'Find Your Home',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              DropDownList()
            ]))
          ],
        ));
  }

  newssearchbar() {
    return Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                labelText: 'Search'),
          ),
          // SizedBox(height: 5),
          MaterialButton(
            color: Colors.grey.shade200,
            onPressed: () {},
            child: Text('Search'),
          )
        ],
      ),
    );
  }
}
