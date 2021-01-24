import 'package:flutter/material.dart';

class SDGOne extends StatefulWidget {
  @override
  SDG1State createState() {
    return SDG1State();
  }
}

class SDG1State extends State<SDGOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG 1'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text("""
                  SDG 1: SDG 1 is no poverty, it focuses on eradicating poverty. People who have worked for SDG 1 have decreased the amount of people living in poverty by more than half the amount between the years 1990 and 2015.

    In countries such as China and India there is a rapid growth in population which has lifted millions of people in poverty. Women are likely to experience poor conditions than men because they have less paid work, lack of education and own less property. 

    SDG 1 is a bold commitment to eradicate poverty in all forms by 2030. This involves the most vulnerable countries, increasing basic resources and services, and supporting communities affected by conflict and climate-related disasters
                  """),
          ),
        ),
      ),
    );
  }
}
