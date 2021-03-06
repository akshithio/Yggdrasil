import 'package:flutter/material.dart';

class SDG15 extends StatefulWidget {
  @override
  SDG15State createState() {
    return SDG15State();
  }
}

class SDG15State extends State<SDG15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 15'),
      ),
      body: Container(child: Text("""SDG 15 is life on land, SDG 15 aims on saving and giving a better environment to creatures on land. SDG 15 focuses on providing a good habitat to all animals.

Every year, 13 million hectares of forests are lost, while the persistent degradation of drylands has led to the desertification of 3.6 billion hectares, disproportionately affecting poor communities.
SDG 15 aims to to reduce the loss of natural habitats and biodiversity which are part of our common heritage and support global food and water security, climate change mitigation and adaptation, and peace and security.
"""),
      ),
    );
  }
}
