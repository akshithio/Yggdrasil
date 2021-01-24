import 'package:flutter/material.dart';

class SDG12 extends StatefulWidget {
  @override
  SDG12State createState() {
    return SDG12State();
  }
}

class SDG12State extends State<SDG12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 12'),
      ),
      body: Container(child: Text("""SDG 12 is Responsible consumption and production. SDG 12 aims on reducing the consumption and increasing the production of basic needs and everyday products we use in day to day life.

Many people in the world don’t have the right access to basic products which they need in day to day life. 

To fix these problems SDG 12 pitches in. To solve these problems people from SDG 12 encourage industries, businesses and consumers to recycle and reduce waste is equally important, as is supporting developing countries to move towards more sustainable patterns of consumption by 2030.


"""),
      ),
    );
  }
}
