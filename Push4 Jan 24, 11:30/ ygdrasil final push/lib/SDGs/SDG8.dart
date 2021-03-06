import 'package:flutter/material.dart';

class SDG8 extends StatefulWidget {
  @override
  SDG8State createState() {
    return SDG8State();
  }
}

class SDG8State extends State<SDG8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 8'),
      ),
      body: Container(
        child: Text(
            """SDG 8 is Decent work and economic, SDG 8 aims at providing everyone with decent work conditions. SDG 8 also aims on increasing the economic growth of developing countries by providing people with good jobs with humane working conditions.

In other countries the population is rapidly increasing so there is very slow growth and widening inequalities and very less job opportunities. According to the International Labour Organization, more than 204 million people were unemployed in 2015.

People working for SDG 8 promote continuous economic growth, higher levels of productivity and technological creativity. People from SDG 8 also aim on eradicating forced labour, slavery and human trafficking. With these targets in mind, the goal is to achieve maximum and effective employment and decent work conditions for both men and women by 2030.
"""),
      ),
    );
  }
}
