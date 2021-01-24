import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  TextEditingController userNameInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(15),
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
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: 25),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('assets/images/TestLogo.webp'),
                    backgroundColor: Colors.transparent,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      'About Yggdrasil',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ), 
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      """Yggdrasil is known as the tree of life in the Norse mythology. The tree holds the nine worlds together. Our app is solely user based. The user can create articles and blogs which can be seen by others who are using the app. The users can share their experiences which can be seen by other users. These tips, tricks, articles and blogs will help spread awareness amongst the society and for you the user increase the things you know about sustainable environment.
 """,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ), 
                  Divider(
                    thickness: 4,
                    color: Colors.black12,
                    height: 15,
                    indent: 50,
                    endIndent: 50,
                  ),
                
                ],
              ),
            ),
          ),
        ));
  }
}
