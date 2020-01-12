import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DrawerNavegator extends StatefulWidget {
  @override
  _DrawerNavegatorState createState() => _DrawerNavegatorState();
}

class _DrawerNavegatorState extends State<DrawerNavegator> {

  TextStyle drawerFontStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w900,
    color: Colors.black45,
  );
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      elevation: 6,
      semanticLabel: 'Drawer fun',
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('images/drawerBG.png'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start
                  ,
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: MediaQuery.of(context).size.height / 18,
                      backgroundImage:ExactAssetImage('images/avatar.jpg'),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text('User Name',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 6,
                    ),
                    Text('UserEmal@domain.com',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                            fontWeight: FontWeight.w700)),
                  ],
                ),
              )
            ],
          ),
//          SizedBox(
//            height: 30,
//          ),
//          Center(
//            child: CircleAvatar(
//              maxRadius: MediaQuery.of(context).size.height / 8,
//              backgroundColor: Colors.deepPurple,
//            ),
//          ),
//          Center(
//            child: Column(
//              children: <Widget>[
//                SizedBox(
//                  height: 10,
//                ),
//                Text('User Name',
//                    style: TextStyle(
//                        fontSize: 30,
//                        color: Colors.black45,
//                        fontWeight: FontWeight.w700)),
//                Text('UserEmal@domain.com',
//                    style: TextStyle(
//                        fontSize: 20,
//                        color: Colors.black45,
//                        fontWeight: FontWeight.w700)),
//                Divider(
//                  endIndent: 30,
//                  indent: 30,
//                  height: 40,
//                  thickness: 1,
//                  color: Colors.black45,
//                ),
//              ],
//            ),
//          ),
          Container(

            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Text(
                        'Profile',
                        style: drawerFontStyle,
                      ),
                    ),
                  ],
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 20,
                  thickness: 1,
                  color: Colors.black45,
                ),

                InkWell(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.markunread,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Messages ',
                        style: drawerFontStyle,
                      ),
                    ],
                  ),
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 20,
                  thickness: 1,
                  color: Colors.black45,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.supervisor_account,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Text(
                        'Support ',
                        style: drawerFontStyle,
                      ),
                    ),
                  ],
                ),
                Divider(
                  endIndent: 30,
                  indent: 30,
                  height: 20,
                  thickness: 1,
                  color: Colors.black45,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Text(
                        'Logout ',
                        style: drawerFontStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
