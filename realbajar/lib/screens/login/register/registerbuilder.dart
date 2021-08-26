import 'package:flutter/material.dart';

class RegisterBuilder extends StatefulWidget {
  const RegisterBuilder({Key key}) : super(key: key);

  @override
  _RegisterBuilderState createState() => _RegisterBuilderState();
}

class _RegisterBuilderState extends State<RegisterBuilder> {
  var initvalue = 'User Role';
  @override
  Widget build(BuildContext context) {
    TextEditingController _controlusername = TextEditingController();
    TextEditingController _controlemail = TextEditingController();
    return Container(
      child: Column(
        children: [
          TextFormField(
            controller: _controlusername,
            cursorColor: Colors.orange,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)),
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.orange),
                border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: _controlemail,
            cursorColor: Colors.orange,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)),
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.orange),
                border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          DropdownButtonFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
            iconEnabledColor: Colors.orange,
            value: initvalue,
            onChanged: (newValue) {
              setState(() {
                initvalue = newValue;
              });
            },
            items: ['User Role', 'Agent', 'Agency']
                .map((value) => DropdownMenuItem(
                      value: value,
                      child: Text(
                        '$value',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ))
                .toList(),
          ),
          SizedBox(height: 20),
          MaterialButton(
            color: Colors.orange,
            onPressed: () {},
            child: Text(
              'Register',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
