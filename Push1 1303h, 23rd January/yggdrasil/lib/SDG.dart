import 'package:flutter/material.dart';

class SDG extends StatelessWidget {
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
          children: <Widget> [
            UserAccountsDrawerHeader(
              accountName: Text('Yggdrasil Developers'), 
              accountEmail: Text('YggdrasilDev@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text(
                  'Y',
                  style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ),
              ListTile(
                title: Text('SDG Information',
                style: TextStyle(
                  fontSize: 19,),
                  ),
                  trailing: Icon(Icons.emoji_nature_rounded),

                  onTap: () {}
              ),
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

              onTap: () {}
            ),
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

              onTap: () {}
            ),
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

              onTap: () {}
            ),
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

              onTap: () {}
            ),
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

              onTap: () {}
            ),
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
              trailing: Icon(Icons.perm_device_information_rounded),
              onTap: (){},
            ),  
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        primary: false,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
            padding: EdgeInsets.all(8),
            child: 
            Image.asset('/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG.png')
            ),
          ),
           InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG1.png')),
          ),
           InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG2.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG3.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG4.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG5.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG6.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG7.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG8.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG9.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG10.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG11.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG12.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG13.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG14.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG15.png')),
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(
                    '/Users/akshithchowdary/code/yggdrasil/assets/images/SDGs/SDG16.png')),
          ),
          InkWell(
            onTap: () {},
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
