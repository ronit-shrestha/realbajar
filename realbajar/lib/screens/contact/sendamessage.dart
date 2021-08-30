import 'package:flutter/material.dart';

class SendAMessage extends StatelessWidget {
  const SendAMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _controlname = TextEditingController();
    var _controlemail = TextEditingController();
    var _controlnumber = TextEditingController();
    var _controlmessage = TextEditingController();
    return Container(
      child: Column(
        children: [
          ListTile(
              tileColor: Colors.grey.shade200,
              title: Text(
                'SEND US A MESSAGE',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: size.width * .05),
              )),
          SizedBox(height: 20),
          _name(_controlname),
          _email(_controlemail),
          _number(_controlnumber),
          _message(_controlmessage),
          MaterialButton(
            color: Colors.orange,
            onPressed: () {},
            child: Text(
              'Send Message',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  _name(_controlname) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controlname,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelText: 'Name',
            labelStyle: TextStyle(color: Colors.orange),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  _email(_controlemail) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controlemail,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelText: 'Email',
            labelStyle: TextStyle(color: Colors.orange),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  _number(_controlnumber) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controlnumber,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelText: 'Phone Number',
            labelStyle: TextStyle(color: Colors.orange),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  _message(_controlmessage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: _controlmessage,
        maxLines: 8,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelText: 'Message',
            labelStyle: TextStyle(color: Colors.orange),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }
}
