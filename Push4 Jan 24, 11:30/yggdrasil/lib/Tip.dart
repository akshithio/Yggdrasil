import 'dart:io';

import 'package:flutter/material.dart';


import 'main.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Tips & Tricks'),
    ),
    drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(userName),
                accountEmail: Text(""),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.brown,
                  child: Text(
                    userName.length > 0 ? userName[0] : "valueNull",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                  title: Text(
                    'SDG Information',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  trailing: Icon(Icons.emoji_nature_rounded),
                  onTap: () {
                    Navigator.pushNamed(context, '/SDG');
                  }),
              Divider(
                thickness: 2,
                color: Colors.blueGrey,
                height: 15,
              ),
              ListTile(
                  title: Text(
                    'Blogs and Articles',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  trailing: Icon(Icons.text_fields_rounded),
                  onTap: () {
                     Navigator.pushNamed(context, '/Article');
                  }),
              Divider(
                thickness: 2,
                color: Colors.blueGrey,
                height: 15,
              ),
              ListTile(
                  title: Text(
                    'Events and Conventions',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  trailing: Icon(Icons.nature_people_rounded),
                  onTap: () {
                    Navigator.pushNamed(context, '/Event');
                  }),
              Divider(
                thickness: 2,
                color: Colors.blueGrey,
                height: 15,
              ),
              ListTile(
                  title: Text(
                    'Recycle and Reuse',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  trailing: Icon(Icons.delete),
                  onTap: () {
                    Navigator.pushNamed(context, '/Recycle');
                  }),
              Divider(
                thickness: 2,
                color: Colors.blueGrey,
                height: 15,
              ),
              ListTile(
                  title: Text(
                    'Tips and Tricks',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  trailing: Icon(Icons.psychology),
                  onTap: () {
                    //Snackbar
                  }),
                   Divider(
                thickness: 2,
                color: Colors.blueGrey,
                height: 15,
              ),
             ListTile(
                  title: Text(
                    'About Yggdrasil',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  trailing: Icon(Icons.info),
                  onTap: () {
                    Navigator.pushNamed(context, '/About');
                  }),
            
              Divider(
                thickness: 2,
                color: Colors.blueGrey,
                height: 15,
              ),
              ListTile(
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  trailing: Icon(Icons.exit_to_app_rounded),
                  onTap: () {
                    exit(0);
                  }),
            
            ],
          ),
        ),
    body: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9,
              ],
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ])),
      child: ListTile(
            title: Text('Jute Bags', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            contentPadding: EdgeInsets.all(10),

            subtitle: Text("""
            
  To get the most value out of Jute Bags, it is essential that you use it enough such as 730 times to ovecome the benefit from plastic bags."""),
    ),
    ),
    Container(
      decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9,
              ],
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ])),
      child: ListTile(
            title: Text('Organic Waste', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            contentPadding: EdgeInsets.all(10),

            subtitle: Text("""
            
  Organic waste and vegetable waste can be 
made to rot and soil can be added to make compost for plants"""),
    ),
    ),
    Container(
      decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9,
              ],
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ])),
      child: ListTile(
            title: Text('Metal waste', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            contentPadding: EdgeInsets.all(10),

            subtitle: Text("""
            
  Metal scraps of iron and aluminium can be recycled. It can't 
easily be done in house hold conditions so you can give the metal waste to people who smelt it."""),
    ),
    ),
    Container(
      decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9,
              ],
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ])),
      child: ListTile(
            title: Text('Plastic waste:', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            contentPadding: EdgeInsets.all(10),

            subtitle: Text("""
            
 Plastic waste can be recycled and used as fuel to melt limestones
in large furnaces. 
"""),
    ),
    ),
    Container(
      decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9,
              ],
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ])),
      child: ListTile(
            title: Text('Paper waste', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            contentPadding: EdgeInsets.all(10),

            subtitle: Text("""
            
Paper can be used to make decorative items which will make any place look lively."""),
    ),
    ),
    Container(
      decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9,
              ],
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ])),
      child: ListTile(
            title: Text('Electronic waste', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            contentPadding: EdgeInsets.all(10),

            subtitle: Text(""" E waste also can be recycled. E waste have a lot of useful and valuable stuff in them which can be used in many places."""),
    ),
    ),
    Container(
      decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9,
              ],
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ])),
      child: ListTile(
            title: Text('Excess books and stationery', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            contentPadding: EdgeInsets.all(10),

            subtitle: Text("""Excess books and stationery can be 
given to the children who don't have access to them."""),
    ),
    ),
    Container(
      decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9,
              ],
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ])),
      child: ListTile(
            title: Text('Liquid waste', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            contentPadding: EdgeInsets.all(10),

            subtitle: Text("""Excess amounts of water can be filtered and ready to drink or it can be used for other household activities such as cleaning and many more"""),
    ),
    ),

  ],
)
       
          
    
    );
  }
}
