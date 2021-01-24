import 'package:flutter/material.dart';

class SDG11 extends StatefulWidget {
  @override
  SDG11State createState() {
    return SDG11State();
  }
}

class SDG11State extends State<SDG11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 11'),
      ),
      body: Container(
        child: Text(
            """SDG 11 is Sustainable cities and communities, SDG aims on providing sustainable cities and communities to people.

Since there is a rapidly growing population and limited place some of the people will live in underdeveloped areas. 

To solve these problems people from SDG 11 are making new public transport, creating green public spaces, and improving urban planning and management in participatory and inclusive ways.
"""),
      ),
    );
  }
}
