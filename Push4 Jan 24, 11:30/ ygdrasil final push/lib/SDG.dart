import 'package:flutter/material.dart';

import 'main.dart';

class SDG extends StatelessWidget {
  SDG();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information about the SDGs"),
        // automaticallyImplyLeading: true,
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
                  //Snackbar
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
                  Navigator.pushNamed(context, '/Tip');
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
                onTap: () {}),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        primary: false,
        crossAxisSpacing: 7,
        mainAxisSpacing: 5,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDGMain');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG1');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG1.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG2');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG2.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG3');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG3.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG4');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG4.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG5');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG5.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG6');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG6.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG7');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG7.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG8');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG8.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG9');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG9.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG10');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG10.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG11');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG11.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG12');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG12.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG13');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG13.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG14');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG14.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG15');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG15.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG16');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG16.png')),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/SDG17');
            },
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG17.png')),
          ),
        ],
      ),
    );
  }
}
