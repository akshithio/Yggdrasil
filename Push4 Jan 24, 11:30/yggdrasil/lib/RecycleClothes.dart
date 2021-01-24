import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'models.dart';

class RecycleClothesListScreen extends StatefulWidget {
  @override
  _RecycleClothesListScreenState createState() {
    return _RecycleClothesListScreenState();
  }
}

class _RecycleClothesListScreenState extends State<RecycleClothesListScreen> {
  void _awaitReturnValueFromInputScreen(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/AddRecycleClothes');
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
    body: FutureBuilder(
            future: Firestore.instance
                .collection('recycles')
                .where('category', isEqualTo: 'Clothes')
                .getDocuments(),
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

      // var userCollection = Firestore.instance.collection('recycles');

      // var userFromFS = await userCollection
      //     .where('category', isEqualTo: 'Electronics')
      //     .getDocuments();
      
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

class AddRecycleClothesScreen extends StatefulWidget {
  @override
  _AddRecycleClothesScreenState createState() {
    return _AddRecycleClothesScreenState();
  }
}

class _AddRecycleClothesScreenState extends State<AddRecycleClothesScreen> {
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
        'Clothes', recycleDescription, recycleQuantity, recycleSubCategory);

    Navigator.pop(context, writtenProposal);
  }
}
