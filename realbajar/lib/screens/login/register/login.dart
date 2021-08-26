import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realbajar/functions/buttonfunction.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/login/register/loginbuilder.dart';
import 'package:realbajar/screens/login/register/registerbuilder.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          AppbarBackButton().appbarBackButton(context),
        ],
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
      ),
      drawer: RealBajarDrawer(),
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade300,
          child: ListView(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/realbajarlogo.png'),
                      SizedBox(height: 30),
                      CupertinoSlidingSegmentedControl(
                          backgroundColor: Colors.grey.shade300,
                          thumbColor: Colors.orange,
                          groupValue: value,
                          children: {
                            0: slidingtext('Login'),
                            1: slidingtext('Register')
                          },
                          onValueChanged: (val) {
                            setState(() {
                              this.value = val;
                            });
                          }),
                      SizedBox(height: 30),
                      if (value == 0)
                        LoginBuilder()
                      else if (value == 1)
                        RegisterBuilder()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  slidingtext(text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
