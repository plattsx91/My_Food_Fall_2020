import './Login.dart';
import './Camera.dart';
import './Menu.dart';
import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  AddItem({
    Key key,
  }) : super(key: key);

  @override
  AddItemState createState() => AddItemState();
}

class AddItemState extends State<AddItem> {
  final quantityController = TextEditingController();
  final itemNameController = TextEditingController();
  final dateController = TextEditingController();

  //final descriptionController = TextEditingController(); - Controller for Item Description

  void submit(String itemName, String expDate, String quantity) {
    setState(() {
      //Will send the username and password to the back end
      //It will then get back a bool for the username first
      //If username exists, then will give back a bool for the password
      //If both are true, then go to the user's menu
      //If even one is false, the user must re input the Username and/or Password
      if (itemName != '') {
        if (expDate != '') {
          if (quantity != '') {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()));
          } else {
            invalidInput("No Quantity Received");
          }
        } else {
          invalidInput("No Expiration Received");
        }
      } else {
        invalidInput("No Item Name Received");
      }
    });
  }

  Future<void> invalidInput(String statement) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.cyan[50],
          title: Text(
            'Invalid Input',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.orange[700],
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  statement,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Understood',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[700],
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        title: Row(
          children: <Widget>[
            SizedBox(
              width: 64,
            ),
            Container(
              child: Text("Item Category"),
            ),
            SizedBox(
              width: 64,
            ),
            Container(
              width: 64,
              height: 64,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                    controller: quantityController,
                    decoration: InputDecoration(
                      hintText: "#",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 172,
                  height: 38,
                  child: TextFormField(
                    controller: itemNameController,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Item Name',
                      hintStyle: TextStyle(fontSize: 16.0, color: Colors.black),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        // borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Colors.orange[700]),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 172,
                  height: 38,
                  child: TextFormField(
                    controller: dateController,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Expiration Date',
                      hintStyle: TextStyle(fontSize: 16.0, color: Colors.black),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        // borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Colors.orange[700]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 300.0,
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 387,
                  ),
                  Container(
                    height: 78,
                    width: 164,
                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      child: RaisedButton(
                        onPressed: () {
                          submit(itemNameController.text, dateController.text,
                              quantityController.text);
                        },
                        color: Colors.orange[700],
                        child: Center(
                          child: Text('Add Item',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
              The Code here is for when/if we want to add a description to an Item
              Container(
                width: 242,
                height: 32,
                color: Colors.orange[700],
                child: Center(
                  child: Text(
                  "Notes",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                ),
              ),

              Container(
                width: 242,
                height: 320,
                child: Column(
                children: [
                  TextFormField(
                  controller: descriptionController,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      // borderRadius: BorderRadius.circular(5.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 2, color: Colors.orange[700]),
                    ),
                  ),
                ),
                  TextFormField(
                    controller: descriptionController,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        // borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.orange[700]),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: descriptionController,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        // borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.orange[700]),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: descriptionController,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        // borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.orange[700]),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: descriptionController,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        // borderRadius: BorderRadius.circular(5.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Colors.orange[700]),
                      ),
                    ),
                  ),
                ],
                ),
              ),*/
