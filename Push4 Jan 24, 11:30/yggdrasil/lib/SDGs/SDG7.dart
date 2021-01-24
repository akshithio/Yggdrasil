import 'package:flutter/material.dart';

class SDG7 extends StatefulWidget {
  @override
  SDG7State createState() {
    return SDG7State();
  }
}

class SDG7State extends State<SDG7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 7'),
      ),
      body: Text(
          """SDG 7 is Affordable and clean energy, SDG 7 aims on providing clean and affordable energy sources to all the people. 

Unfortunately in many countries the population is increasing so the demand for energy is very high so many people in the country won’t have equal energy.

To solve this people from SDG 7 are suggesting to invest in solar, wind and thermal power which improvises energy productivity and it also ensures energy is provided to everyone.
"""),
    );
  }
}
