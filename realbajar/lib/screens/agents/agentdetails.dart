import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/contact/sendamessage.dart';
import 'package:realbajar/screens/drawer/drawer.dart';

class AgentDetails extends StatelessWidget {
  final String agentname;
  AgentDetails(this.agentname);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(agentname),
        centerTitle: true,
        actions: [AppbarBackButton().appbarBackButton(context)],
      ),
      drawer: RealBajarDrawer(),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
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
                        FaIcon(FontAwesomeIcons.mobile, size: size.width * .04),
                        Text('Mobile:'),
                        Text('1-222-333-5555')
                      ]),
                      TableRow(children: [
                        FaIcon(FontAwesomeIcons.fax, size: size.width * .04),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SendAMessage()
        ],
      ),
    );
  }
}
