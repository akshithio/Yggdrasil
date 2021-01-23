import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yggdrasil/main.dart';
import 'models.dart';

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
                onTap: () {
                  Navigator.pushNamed(context, '/Login');
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
              trailing: Icon(Icons.perm_device_information_rounded),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Image.asset('assets/images/img_code.jpg'),
    );
  }
}

class RecycleElectronicsListScreen extends StatefulWidget {
  @override
  _RecycleElectronicsListScreenState createState() {
    return _RecycleElectronicsListScreenState();
  }
}

class _RecycleElectronicsListScreenState
    extends State<RecycleElectronicsListScreen> {
  void _awaitReturnValueFromInputScreen(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/AddRecycle');
    if (result != null) {
      var article = result as Recycle;
      var test = Firestore.instance.collection('recycles');
      test.add(article.toADictionary());

      // Firestore.instance.collection('articles').add(article.toADictionary());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Recycling and Reusing Terminal'),
        ),
        body: StreamBuilder(
            stream: Firestore.instance.collection('recycles').snapshots(),
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
          tooltip: 'Add prompt',
          onPressed: () {
            _awaitReturnValueFromInputScreen(context);
          },
        ));
  }

  List<Widget> listArticles(List<DocumentSnapshot> documents) {
    var items = documents.map((articleAsJson) {
      var e = Recycle.fromMap(articleAsJson.data);
      return Container(
          child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Text(e.subcategory,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          subtitle: Text(e.description +
              "(" +
              e.quantity.toString() +
              " units)" +
              " from " +
              userName),
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

class AddRecycleElectronicScreen extends StatefulWidget {
  @override
  _AddRecycleElectronicScreenState createState() {
    return _AddRecycleElectronicScreenState();
  }
}

class _AddRecycleElectronicScreenState
    extends State<AddRecycleElectronicScreen> {
  TextEditingController recycleDescriptionController = TextEditingController();

  TextEditingController recycleQuantityController = TextEditingController();

  TextEditingController recycleSubCategoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Enter Details'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 80.0, right: 80, top: 80),
              child: Column(
                children: [
                  Text(
                    'Enter Subcategory',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  TextField(
                    controller: recycleSubCategoryController,
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
                    'Add quantity',
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
                      controller: recycleQuantityController,
                      maxLength: 2500,
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
                    'Add Description',
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
                      controller: recycleDescriptionController,
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
                      'Publish Proposal',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                )),
          ],
        ));
  }

  void _sendDataBack(BuildContext context) {
    String recycleSubCategory = recycleSubCategoryController.text;
    String recycleDescription = recycleDescriptionController.text;
    int recycleQuantity = int.parse(recycleQuantityController.text);
    var writtenProposal = Recycle(
        'Electronics', recycleDescription, recycleQuantity, recycleSubCategory);

    Navigator.pop(context, writtenProposal);
  }
}
