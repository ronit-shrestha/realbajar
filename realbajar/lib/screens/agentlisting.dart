import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgentListing extends StatelessWidget {
  const AgentListing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Julia Robert',
                          style: TextStyle(
                            fontSize: size.width * .05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/backgroundimage.jpg',
                          height: size.width * .3,
                          width: size.width * .3,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Objectively innovate empowered manufactured products whereas parallel platforms. Holisticly predominate extensible testing procedures for reliable supply chains. Dramatically engage topline web services vis-a-vis cutting edge delivaries. Proactively envisioned multimedia based expertise and cross-media growth strategies. Seamlessly visualize quality intellectual capital without superior collaboration and idea sharing.',
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 20),
                        Table(
                          columnWidths: {
                            0: FlexColumnWidth(.15),
                            1: FlexColumnWidth(.3),
                            2: FlexColumnWidth(.9)
                          },
                          children: [
                            TableRow(children: [
                              FaIcon(FontAwesomeIcons.phoneAlt,
                                  size: size.width * .04),
                              Text('Office:'),
                              Text('1-222-333-5555')
                            ]),
                            TableRow(children: [
                              FaIcon(FontAwesomeIcons.mobile,
                                  size: size.width * .04),
                              Text('Mobile:'),
                              Text('1-222-333-5555')
                            ]),
                            TableRow(children: [
                              FaIcon(FontAwesomeIcons.fax,
                                  size: size.width * .04),
                              Text('Fax:'),
                              Text('1-222-333-5555')
                            ]),
                            TableRow(children: [
                              FaIcon(FontAwesomeIcons.whatsapp,
                                  size: size.width * .04),
                              Text('WhatsApp:'),
                              Text('1-222-333-5555')
                            ]),
                          ],
                        ),
                        Divider(),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.facebook),
                                  iconSize: size.width * .05,
                                  color: Colors.grey.shade700),
                              IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.twitter),
                                  iconSize: size.width * .05,
                                  color: Colors.grey.shade700),
                              IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.linkedin),
                                  iconSize: size.width * .05,
                                  color: Colors.grey.shade700),
                              IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.instagram),
                                  iconSize: size.width * .05,
                                  color: Colors.grey.shade700),
                              Card(
                                color: Colors.orange,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'More Details',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
