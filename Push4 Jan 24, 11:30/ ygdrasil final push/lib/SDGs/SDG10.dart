import 'package:flutter/material.dart';

class SDG10 extends StatefulWidget {
  @override
  SDG10State createState() {
    return SDG10State();
  }
}

class SDG10State extends State<SDG10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 10'),
      ),
      body: Container(child: Text("""SDG 10 is Reducing inequalities, SDG 10 focuses on reducing equalities in all fields.

In many areas there are certain inequalities which affect many people for. Income equality is common in many places, it compares the person's income with others who gets more income compared to the other.

For fixing these problems people from SDG 10 pitch in. People from SDG 10 have implemented some sound policies which are : to empower lower income earners and promote economic inclusion.
"""),
      ),
    );
  }
}
