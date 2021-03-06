import 'package:flutter/material.dart';

class SDG6 extends StatefulWidget {
  @override
  SDG6State createState() {
    return SDG6State();
  }
}

class SDG6State extends State<SDG6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 6'),
      ),
      body: Container(child: Text("""SDG 6 is clean water and sanitation, SDG 6 aims on providing clean water and good sanitation to all the people. 

Many countries experience water shortage and increasing droughts. By 2050 it is estimated that one in four will suffer from water shortage.

This is where SDG comes in. People in SDG 6 ensure safe and affordable drinking water to the 800 million people who lack basic services. 

People from SDG 6 have improved the sanitation of 2.1 billion since 1990.

"""),
    ),
    );
  }
}
