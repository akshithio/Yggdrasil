import 'package:flutter/material.dart';

class SDG16 extends StatefulWidget {
  @override
  SDG16State createState() {
    return SDG16State();
  }
}

class SDG16State extends State<SDG16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 16'),
      ),
      body: Center(
        child: Text(
            """SDG 16 is Peace, justice and strong institutions. SDG 16 aims at providing peace and justice to all the people.

In many places there are armed violence and insecurity which have an impact on the country’s development, this affects economic growth. Sexual violence, crime, exploitation and torture are also prevalent where there is conflict, or no rule of law, and countries must take measures to protect those who are most at risk. 

SDG 16 aims on reducing sexual activity and works with the government and communities to end problems and insecurity. SDG 16 also promotes Human rights.

"""),
      ),
    );
  }
}
