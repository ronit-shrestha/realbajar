import 'package:flutter/material.dart';
import 'package:realbajar/screens/drawer/drawer.dart';
import 'package:realbajar/screens/dropdownbuilder.dart';
import 'package:realbajar/screens/login/register/login.dart';

class AddProperty extends StatefulWidget {
  @override
  _AddPropertyState createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  final _key = GlobalKey<FormState>();

  final TextEditingController _controlpropertytitle = TextEditingController();

  final TextEditingController _controladdress = TextEditingController();

  final TextEditingController _controlpropertydescription =
      TextEditingController();

  final TextEditingController _controlsalerentprice = TextEditingController();

  final TextEditingController _controloldprice = TextEditingController();

  final TextEditingController _controlpriceprefix = TextEditingController();

  final TextEditingController _controlpricepostfix = TextEditingController();

  final TextEditingController _controlbedroom = TextEditingController();

  final TextEditingController _controlbathroom = TextEditingController();

  final TextEditingController _controlgarage = TextEditingController();

  final TextEditingController _controlarea = TextEditingController();

  final TextEditingController _controlareapostfix = TextEditingController();

  final TextEditingController _controllotsize = TextEditingController();

  final TextEditingController _controllotsizepostfix = TextEditingController();

  final TextEditingController _controlbuiltyear = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      drawer: RealBajarDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            title: Text('RealBajar',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            actions: [
              CircleAvatar(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      icon: Icon(Icons.person))),
              SizedBox(width: 15)
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Submit Property',
                  style: TextStyle(color: Colors.orange, fontSize: 25)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: Form(
                    key: _key,
                    child: Column(
                      children: [
                        ListTile(
                            title: Text(
                          'Basic',
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                        _basicmandatory(
                            _controlpropertytitle, 'Property Title'),
                        _basicmandatory(_controladdress, 'Address'),
                        _propertydescription(_controlpropertydescription,
                            'Property Description'),
                        _basicmandatory(
                            _controlsalerentprice, 'Sale or Rent Price'),
                        _basicoptional(_controloldprice, 'Old Price'),
                        _basicoptional(
                            _controlpriceprefix, 'Price Prefix Text'),
                        _basicoptional(
                            _controlpricepostfix, 'Price Postfix Text'),
                        _dropdownbuilder(
                            'Parent Property', ['Any', 'No Parent']),
                        _dropdownbuilder('Type', ['Any', 'None']),
                        _dropdownbuilder('Status', ['Any', 'None']),
                        _dropdownbuilder('Location', ['Any', 'None']),
                        _basicmandatory(_controlbedroom, 'No. of Bedrooms'),
                        _basicmandatory(_controlbathroom, 'No. of Bathrooms'),
                        _basicmandatory(
                            _controlgarage, 'No. of Garage or Parking Space'),
                        _basicmandatory(_controlarea, 'Area'),
                        _basicoptional(
                            _controlareapostfix, 'Area Postfix Text'),
                        _basicmandatory(_controllotsize, 'Lot Size'),
                        _basicoptional(
                            _controllotsizepostfix, 'Lot Size Postfix Text'),
                        _basicoptional(_controlbuiltyear, "Built Year"),
                        Row(children: [
                          // Checkbox(),
                          Text(
                            'Mark this property as featured property',
                            style: TextStyle(color: Colors.orange),
                          )
                        ]),
                        MaterialButton(
                          color: Colors.orange,
                          onPressed: () {
                            if (_key.currentState.validate()) {
                              // Navigator.push( terialPageRoute(builder: (context)=> NextPage()));
                            }
                          },
                          child: Text(
                            'Next >>>',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    )),
              ),
            )
          ]))
        ],
      ),
    );
  }

  _basicmandatory(control, title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        validator: (value) => value.isEmpty ? 'Please Enter a value' : null,
        controller: control,
        cursorColor: Colors.orange,
        decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.orange),
            labelText: title,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  _basicoptional(control, title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: TextFormField(
        controller: control,
        cursorColor: Colors.orange,
        decoration: InputDecoration(
            helperText: '( If Any )',
            labelStyle: TextStyle(color: Colors.orange),
            labelText: title,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  _propertydescription(control, title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        maxLines: 10,
        controller: control,
        cursorColor: Colors.orange,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelStyle: TextStyle(color: Colors.orange),
            labelText: title,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange))),
      ),
    );
  }

  _dropdownbuilder(title, dropdownlist) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.orange),
            ),
            DropDownBuilder(dropdownlist)
          ],
        ));
  }
}
