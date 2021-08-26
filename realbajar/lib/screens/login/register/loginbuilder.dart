import 'package:flutter/material.dart';

class LoginBuilder extends StatelessWidget {
  const LoginBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controlusername = TextEditingController();
    TextEditingController _controlpassword = TextEditingController();
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
            controller: _controlpassword,
            obscureText: true,
            cursorColor: Colors.orange,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.orange),
                border: OutlineInputBorder()),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey.shade500),
              )),
          SizedBox(height: 20),
          MaterialButton(
            color: Colors.orange,
            onPressed: () {},
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
