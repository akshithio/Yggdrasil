import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:yggdrasil/Article.dart';
import 'package:yggdrasil/SDG.dart';

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
        '/SDG': (context) => SDG(),
        '/Article': (context) => ArticleListScreen(),
        '/AddArticle': (context) => AddArticleScreen(),
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
                      margin: EdgeInsets.only(top: 30),
                      child: SignInButton(
                        Buttons.FacebookNew,
                        text: " Sign Up with Facebook",
                        onPressed: () {
                          Navigator.pushNamed(context, '/SDG');
                        },
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: SignInButton(
                      Buttons.GoogleDark,
                      text: " Sign Up with Google",
                      onPressed: () {
                         Navigator.pushNamed(context, '/SDG');
                      },
                    ),
                  ),
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
}
