import 'package:flutter/material.dart';

class SDG14 extends StatefulWidget {
  @override
  SDG14State createState() {
    return SDG14State();
  }
}

class SDG14State extends State<SDG14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 14'),
      ),
      body: Container(child: Text("""SDG 14 is life below water, SDG 14 aims on saving and giving a better environment to creatures in life below water.

Oceans absorb about 30 percent of the world’s carbon dioxide produced by humans since the beginning of the industrial revolution. Marine pollution is also a rapidly growing problem which is affecting the marine population.

SDG 14 aims on solving marine pollution and sustainably managing and protecting marine and coastal ecosystems.
"""),
      ),
    );
  }
}
