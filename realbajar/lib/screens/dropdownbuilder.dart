import 'package:flutter/material.dart';

class DropDownBuilder extends StatefulWidget {
  final List finaldropdownlist;
  DropDownBuilder(this.finaldropdownlist);
  @override
  _DropDownBuilderState createState() => _DropDownBuilderState();
}

class _DropDownBuilderState extends State<DropDownBuilder> {
  var initvalue = 'Any';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: initvalue,
      onChanged: (newValue) {
        setState(() {
          initvalue = newValue;
        });
      },
      items: widget.finaldropdownlist
          .map((value) => DropdownMenuItem(
                value: value,
                child: Text('$value'),
              ))
          .toList(),
    );
  }
}
