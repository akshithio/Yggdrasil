import 'package:flutter/material.dart';

class SDGMain extends StatefulWidget {
  @override
  SDGMainState createState() {
    return SDGMainState();
  }
}

class SDGMainState extends State<SDGMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The SDGs'),
      ),
      body: Container(child: Text("SDG’s also known as sustainable development goals which are implemented by the United Nations are goals which were implemented to end poverty, protect the planet and ensure that all people enjoy peace and prosperity by 2030. There are 17 SDG goals. "),
      ),
    );
  }
}
