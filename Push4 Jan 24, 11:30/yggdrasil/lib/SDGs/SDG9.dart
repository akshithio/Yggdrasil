import 'package:flutter/material.dart';

class SDG9 extends StatefulWidget {
  @override
  SDG9State createState() {
    return SDG9State();
  }
}

class SDG9State extends State<SDG9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 9'),
      ),
      body: Container(child: Text("""SDG 9 is Industry, innovation and infrastructure, SDG 9 aims on investing money on innovation and infrastructure which are crucial for economic growth and development. 

Some countries around the world unfortunately don’t have access to the internet. Utilizing the internet and technology is crucial for innovative ideas and access to information and knowledge.

SDG 9 focuses on finding lasting solutions to both economic and environmental challenges, such as providing new jobs to people and promoting energy efficiency. Promoting sustainable industries, and investing in scientific research and innovation.
"""),
      ),
    );
  }
}
