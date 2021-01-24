import 'package:flutter/material.dart';

class SDG17 extends StatefulWidget {
  @override
  SDG17State createState() {
    return SDG17State();
  }
}

class SDG17State extends State<SDG17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 17'),
      ),
      body: Container(child: Text("""SDG 17 is Partnership for the goals. All the problems faced by the SDG’s should be faced globally. The world is more interconnected than ever. Improving access to technology and knowledge is an important way to share ideas and foster innovation. Coordinating policies to help developing countries manage their debt, as well as promoting investment for the least developed, is vital for sustainable growth and development."""),
      ),
    );
  }
}
