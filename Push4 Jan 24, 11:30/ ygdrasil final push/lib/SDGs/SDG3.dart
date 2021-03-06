import 'package:flutter/material.dart';

class SDG3 extends StatefulWidget {
  @override
  SDG3State createState() {
    return SDG3State();
  }
}

class SDG3State extends State<SDG3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 3'),
      ),
      body: Container(child:Text("""SDG 3: SDG 3 is good health and well being, SDG 3 aims on making great progress against several diseases such as HIV and Malaria. SDG 3 also focuses on increasing the life expectancy of every individual.

Unfortunately the progress in some countries has been uneven both between and within the country. There is a huge difference in life expectancy rates between some countries. While some countries have made impressive progress in increasing the life expectancy of their citizens other countries have been lacking in terms of progress.

This is where SDG 3 pitches in. SDG 3 aims for Good health since it is important for sustainable development. SDG 3 also takes into account on widening economic and social inequalities, rapid urbanization, threats to the climate and the environment, the continuing burden of HIV and other infectious diseases, and emerging challenges such as noncommunicable diseases.
"""),
      ),
    );
  }
}
