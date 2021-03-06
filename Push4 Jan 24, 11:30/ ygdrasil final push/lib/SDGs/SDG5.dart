import 'package:flutter/material.dart';

class SDG5 extends StatefulWidget {
  @override
  SDG5State createState() {
    return SDG5State();
  }
}

class SDG5State extends State<SDG5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 5'),
      ),
      body: Container(child: Text("""SDG 5 is Gender equality. It aims on providing equal rights and freedom to both men and women. SDG 5 aims on ending all discrimination against women and girls is not only a basic human right since it’s crucial for sustainable future; it’s proven that empowering women and girls helps economic growth and development. 

Unfortunately there are still large inequalities in some regions with women not being provided the same rights as men. Sexual violence and discrimination is a huge barrier in many public offices. Climate change and disasters continue to have a disproportionate effect on women and children, as do conflict and migration.

This is where SDG 5 pitches in. People in SDG 5 think that it is vital to give equal rights to give women equal rights on land, property, technology and the internet. UNDP has made gender equality central to it’s work.

Now there are more girls in schools and women are encouraged to become leaders which will help them achieve greater gender equality.
"""),
      ),
    );
  }
}
