import 'package:flutter/material.dart';

class SDG13 extends StatefulWidget {
  @override
  SDG13State createState() {
    return SDG13State();
  }
}

class SDG13State extends State<SDG13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 13'),
      ),
      body: Container(child: Text("""SDG 13 is climate action, SDG 9 focuses on climate change and plans on solving it. 

Every country in the world is affected by climate change. Greenhouse gas emissions are more than 50 percent higher than in 1990. Global warming is causing long-lasting changes to our climate system, which threatens irreversible consequences if we do not act. 

To resolve climatic change people from SDG 13 think that strong political will, increased investment, and using existing technology, to limit the increase in global mean temperature to two degrees Celsius above pre-industrial levels, aiming at 1.5°C, but this requires urgent and ambitious collective action.

"""),
    ),
    );
  }
}
