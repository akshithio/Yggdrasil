
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yggdrasil/main.dart';


class RecycleListScreen extends StatefulWidget {
  @override
  _RecycleListScreenState createState() {
    return _RecycleListScreenState();
  }
}

class _RecycleListScreenState extends State<RecycleListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Recycling and Reusing Terminal'),
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
                    //Snackbar
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
                    Navigator.pushNamed(context, '/Tip');
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
        body: Column(children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/RecycleElectronicsList');
            },
            child: Container(
              padding: EdgeInsets.all(5),
              child: Stack(children: [
                Image.asset('assets/images/img_code.jpg'),
                Positioned(
                  bottom: 60,
                  left: 10,
                  child: Text(
                    "Electronic Items",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                    ),
                  ),
                )
              ]),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/RecycleOrganicList');
            },
            child: Container(
              padding: EdgeInsets.all(5),
              child: Stack(children: [
                Image.asset('assets/images/Biology.jpg'),
                Positioned(
                  bottom: 60,
                  left: 10,
                  child: Text(
                    "Organic Materials",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                    ),
                  ),
                )
              ]),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/RecyclePaperList');
            },
            child: Container(
              padding: EdgeInsets.all(5),
              child: Stack(children: [
                Image.asset('assets/images/LanguageArts.jpg'),
                Positioned(
                  bottom: 60,
                  left: 10,
                  child: Text(
                    "Plastic and Paper",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                    ),
                  ),
                )
              ]),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/RecycleClothesList');
            },
            child: Container(
              padding: EdgeInsets.all(5),
              child: Stack(children: [
                Image.asset('assets/images/img_karate.jpg'),
                Positioned(
                  bottom: 60,
                  left: 10,
                  child: Text(
                    "Textiles and Clothes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                    ),
                  ),
                )
              ]),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/RecycleMetalsList');
            },
            child: Container(
              padding: EdgeInsets.all(5),
              child: Stack(children: [
                Image.asset('assets/images/img_carmaintenance.jpg'),
                Positioned(
                  bottom: 60,
                  left: 10,
                  child: Text(
                    "Metals and Rods",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                    ),
                  ),
                )
              ]),
            ),
          ),
        ]));
  }
}
