import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'models.dart';

class ArticleListScreen extends StatefulWidget {
  @override
  _ArticleListScreenState createState() {
    return _ArticleListScreenState();
  }
}

class _ArticleListScreenState extends State<ArticleListScreen> {
  void _awaitReturnValueFromInputScreen(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/AddArticle');
    var article = result as Article;
    Firestore.instance.collection('articles').add(article.toADictionary());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Blogs and Articles'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
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
                    //Snackbar
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
                  onTap: () {}),
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
                  onTap: () {}),
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
                  onTap: () {}),
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
                onTap: () {},
              ),
            ],
          ),
        ),
        body: StreamBuilder(
            stream: Firestore.instance.collection('articles').snapshots(),
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
          tooltip: 'Write New Article',
          onPressed: () {
            _awaitReturnValueFromInputScreen(context);
          },
        ));
  }

  List<Widget> listArticles(List<DocumentSnapshot> documents) {
    var items = documents.map((articleAsJson) {
      var e = Article.fromMap(articleAsJson.data);
      return Container(
          child: InkWell(
        onTap: () {
          // Navigator.pushNamed(context, );
        },
        child: ListTile(
          title: Text(e.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          subtitle: Text("By " + e.user),
          isThreeLine: false,
          leading: CircleAvatar(
            child: Text(e.user.length > 0 ? e.user[0] : "valueNull"),
          ),
        ),
      ));
    }).toList();

    return items;
  }
}

class AddArticleScreen extends StatefulWidget {
  @override
  _AddArticleScreenState createState() {
    return _AddArticleScreenState();
  }
}

class _AddArticleScreenState extends State<AddArticleScreen> {
  TextEditingController articleNameController = TextEditingController();
  TextEditingController articleUserController = TextEditingController();
  TextEditingController articleBodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Enter Aricle Here'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 80.0, right: 80, top: 80),
              child: Column(
                children: [
                  Text(
                    'Enter Article Name',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  TextField(
                    controller: articleNameController,
                    maxLength: 90,
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
                    'Enter Username',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 80, right: 80),
                    child: TextField(
                      controller: articleUserController,
                      maxLength: 40,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: Column(
                children: [
                  Text(
                    'Type Article',
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
                      'Submit Article',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                )),
          ],
        ));
  }

  void _sendDataBack(BuildContext context) {
    String articleName = articleNameController.text;
    String articleUser = articleUserController.text;
    String articleBody = articleBodyController.text;

    var writtenArticle = Article(articleName, articleUser, articleBody);

    Navigator.pop(context, writtenArticle);
  }
}
