import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yggdrasil/main.dart';
import 'models.dart';

class EventListScreen extends StatefulWidget {
  @override
  _EventListScreenState createState() {
    return _EventListScreenState();
  }
}

class _EventListScreenState extends State<EventListScreen> {
  void _awaitReturnValueFromInputScreen(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/AddEvent');
    if (result != null) {
      var article = result as Article;
      var test = Firestore.instance.collection('events');
      test.add(article.toADictionary());

      // Firestore.instance.collection('articles').add(article.toADictionary());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Events and Conventions'),
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
                    // Snackbar
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
        body: StreamBuilder(
            stream: Firestore.instance.collection('events').snapshots(),
            builder: (context, snapshots) {
              if (!snapshots.hasData) {
                return CircularProgressIndicator();
              }

              return ListView(
                padding: EdgeInsets.all(8),
                children: listArticles(snapshots.data.documents),
              );
            }),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          tooltip: 'Create new Event',
          onPressed: () {
            _awaitReturnValueFromInputScreen(context);
          },
        ));
  }

  List<Widget> listArticles(List<DocumentSnapshot> documents) {
    var items = documents.map((articleAsJson) {
      var e = Article.fromMap(articleAsJson.data);
      e.userName = userName;
      return Container(
          child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/EventDetail',
              arguments: Article(e.title, e.articleBody, e.userName));
        },
        child: ListTile(
          title: Text(e.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          isThreeLine: false,
          leading: CircleAvatar(
            child: Text(userName.length > 0 ? userName[0] : "NA"),
          ),
        ),
      ));
    }).toList();

    return items;
  }
}

class AddEventScreen extends StatefulWidget {
  @override
  _AddEventScreenState createState() {
    return _AddEventScreenState();
  }
}

class _AddEventScreenState extends State<AddEventScreen> {
  TextEditingController articleNameController = TextEditingController();

  TextEditingController articleBodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Enter Details Here'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 80.0, right: 80, top: 80),
              child: Column(
                children: [
                  Text(
                    'Enter Event Name',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  TextField(
                    controller: articleNameController,
                    maxLength: 60,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Column(
                children: [
                  Text(
                    'Enter Event Details',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 3,
                      controller: articleBodyController,
                      maxLength: 2500,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(80),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      _sendDataBack(context);
                    },
                    child: Text(
                      'Publish Event',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                )),
          ],
        ));
  }

  void _sendDataBack(BuildContext context) {
    String articleName = articleNameController.text;

    String articleBody = articleBodyController.text;

    var writtenArticle = Article(articleName, articleBody, '');

    Navigator.pop(context, writtenArticle);
  }
}

class EventDetails extends StatefulWidget {
  _EventDetailsState createState() {
    return _EventDetailsState();
  }
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    // variable of retrieving parameters required

    final Article receivedArgs = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: Text(
                  receivedArgs.title,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 7),
              alignment: Alignment.topCenter,
              child: Text(
                'Tap to read',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.blueGrey,
              height: 15,
              indent: 100,
              endIndent: 100,
            ),
            Container(
              margin: EdgeInsets.only(top: 7, left: 10, right: 10),
              alignment: Alignment.topLeft,
              child: Text(
                receivedArgs.articleBody,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
