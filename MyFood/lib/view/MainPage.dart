import 'package:flutter/material.dart';
import './FridgePage.dart';
import 'BarcodeScanPage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //This is the mint color for backgrounds
      backgroundColor: Color(0xffe0f7f3),

      body: Column(
        children: <Widget>[
          //User Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('assets/images/user.png'),
                iconSize: 200,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BarcodeScanPage()));
                },
              )
            ],
          ),

          //Row of 4 buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Menu Button
              IconButton(
                icon: Image.asset('assets/images/menu.png'),
                iconSize: 80,
                onPressed: () {},
              ),
              //Fridge Button
              IconButton(
                icon: Image.asset('assets/images/fridge.png'),
                iconSize: 80,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FridgePage()));
                },
              ),
              //Shopping Cart Button
              IconButton(
                icon: Image.asset('assets/images/shopping_cart.png'),
                iconSize: 80,
                onPressed: () {},
              ),
              //Grocery List Button
              IconButton(
                icon: Image.asset('assets/images/grocery_list.png'),
                iconSize: 80,
                onPressed: () {},
              )
            ],
          ),
          //Box of text.
          //This will eventually be a "News Feed" that will tell you information about your fridge
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(width: 2)),
              margin: EdgeInsets.all(24),
              width: 400,
              height: 100,
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Text(
                    "Porttitor massa id neque aliquam. Porttitor rhoncus dolor purus non. Semper risus in hendrerit gravida rutrum quisque. Pellentesque habitant morbi tristique senectus et netus et malesuada. Senectus et netus et malesuada fames ac. Lectus mauris ultrices eros in cursus turpis massa tincidunt. A scelerisque purus semper eget duis at tellus at urna. Accumsan in nisl nisi scelerisque eu. Aenean vel elit scelerisque mauris. Nunc vel risus commodo viverra maecenas accumsan. Libero enim sed faucibus turpis. Amet nulla facilisi morbi tempus iaculis urna id. Et ligula ullamcorper malesuada proin libero. Ut aliquam purus sit amet luctus venenatis. Aenean et tortor at risus viverra adipiscing at in tellus. Quisque egestas diam in arcu cursus euismod quis. Blandit cursus risus at ultrices. Lectus nulla at volutpat diam ut venenatis tellus in metus. Malesuada bibendum arcu vitae elementum curabitur vitae nunc  Id leo in vitae turpis massa. Porttitor massa id neque aliquam. Porttitor rhoncus dolor purus non. Semper risus in hendrerit gravida rutrum quisque. Pellentesque habitant morbi tristique senectus et netus et malesuada. Senectus et netus et malesuada fames ac. Lectus mauris ultrices eros in cursus turpis massa tincidunt. A scelerisque purus semper eget duis at tellus at urna. Accumsan in nisl nisi scelerisque eu. Aenean vel elit scelerisque mauris. Nunc vel risus commodo viverra maecenas accumsan. Libero enim sed faucibus turpis. Amet nulla facilisi morbi tempus iaculis urna id. Et ligula ullamcorper malesuada proin libero. Ut aliquam purus sit amet luctus venenatis. Aenean et tortor at risus viverra adipiscing at in tellus. Quisque egestas diam in arcu cursus euismod quis. Blandit cursus risus at ultrices. Lectus nulla at volutpat diam ut venenatis tellus in metus. Malesuada bibendum arcu vitae elementum curabitur vitae nunc "),
              ),
            ),
          )
        ],
      ),
    );
  }
}
