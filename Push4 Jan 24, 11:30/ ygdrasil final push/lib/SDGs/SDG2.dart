import 'package:flutter/material.dart';

class SDG2 extends StatefulWidget {
  @override
  SDG2State createState() {
    return SDG2State();
  }
}

class SDG2State extends State<SDG2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 2'),
      ),
      body: Container(child: Text("""SDG 2: SDG 2 is zero hunger, it focuses on decreasing the number of undernourished people. SDG 2 has decreased the number of undernourished people and ensures that all people get the right amount of food and nutrients. 

Unfortunately extreme hunger and shortage of food is a huge barrier in many countries According to the UNDP web page there are 821 million people estimated to be undernourished as of 2017.

This is why SDG 2 aims on ending all forms of hunger and malnourishment and making sure all people and children have sufficient nutrition and food all year. This act also involves in promoting sustainable farming and small scale farmers.
"""),
      ),
    );
  }
}
