import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:yggdrasil/Article.dart';
import 'package:yggdrasil/Event.dart';
import 'package:yggdrasil/Recycle.dart';
import 'package:yggdrasil/SDG.dart';

String userName = "";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(title: 'Login to Yggdrasil'),
      routes: {
        '/Login': (context) => LoginPage(),
        '/SDG': (context) => SDG(),
        '/Article': (context) => ArticleListScreen(),
        '/AddArticle': (context) => AddArticleScreen(),
        '/ArticleDetail': (context) => ArticleDetails(),
        '/Event': (context) => EventListScreen(),
        '/AddEvent': (context) => AddEventScreen(),
        '/EventDetail': (context) => EventDetails(),
        '/Recycle': (context) => RecycleListScreen(),
        '/AddRecycle': (context) => AddRecycleElectronicScreen(),
       // '/RecycleDetail': (context) => RecycleDetails(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      'Login to Yggdrasil',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                      child: TextField(
                    controller: userNameInput,
                    maxLength: 40,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      onPressed: _handleLogin,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Log in",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
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
                  Column(children: [
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: SignInButton(
                          Buttons.FacebookNew,
                          text: " Sign Up with Facebook",
                          onPressed: () {
                           
                          },
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: SignInButton(Buttons.GoogleDark,
                          text: " Sign Up with Google", onPressed: () {
                        
                      }),
                    ),
                  ]),
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    child: Text(
                      'About Yggdrasil',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Future<void> _handleLogin() async {
    

    var userCollection = Firestore.instance.collection('users');

    var userFromFS = await userCollection
        .where('userName', isEqualTo: userNameInput.text)
        .getDocuments();

    if (userFromFS.documents.length > 0) {
      var user = userFromFS.documents.first;

      setState(() {
        userName = user.data["userName"];
      });
    } else {
      Map<String, dynamic> newUser = {"userName": userNameInput.text};
      var docRef = await userCollection.add(newUser);
      var newUserFromFS = await docRef.get();
      setState(() {
        userName = newUserFromFS.data["userName"];
      });
    }
    Navigator.pushNamed(context, '/SDG');  
  }
}
