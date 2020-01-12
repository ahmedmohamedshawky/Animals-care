import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testa/Screens/HomeScreen.dart';
import '../Functions/PageModel.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  List<PageModel> firstPage ;
  ValueNotifier<int> pageIndexNotifier = ValueNotifier(0);
  void _addpages(){
    firstPage = List<PageModel>();
    firstPage.add(
        PageModel(
            'images/dog1.jpg' ,
            Icons.pets ,
            'Welcome ' ,
            'We hope to get a peacefull planet'
        )
    );
    firstPage.add(
        PageModel(
            'images/cat1.jpg' ,
            Icons.pets ,
            'Welcome ' ,
            'We hope to get a peacefull planet'
        )
    );
    firstPage.add(
        PageModel(
            'images/dog2.jpg' ,
            Icons.pets ,
            'Welcome ' ,
            'We hope to get a peacefull planet'
        )
    );
    firstPage.add(
        PageModel(
            'images/cat2.jpg' ,
            Icons.pets ,
            'Welcome ' ,
            'We hope to get a peacefull planet'
        )
    );
  }
  Widget build(BuildContext context) {
 _addpages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black45,
          ),
          PageView.builder(
            onPageChanged: (index){
              pageIndexNotifier.value=index;
            },
              dragStartBehavior: DragStartBehavior.down,
              itemCount:firstPage.length ,
              itemBuilder: (context, index) {
                return Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(firstPage[index].image),
                              fit: BoxFit.cover)),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Transform.translate(

                            child: Icon(
                             firstPage[index].Icon,
                              color: Colors.white,
                              size: 100,
                            ),
                            offset: Offset(0,-40),
                          ),
                          Text(
                           firstPage[index].title,
                            style:
                                (TextStyle(fontSize: 40, color: Colors.white)),
                          ),
                          Text(
                           firstPage[index].text,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text('for all the animals',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                );
              }),
          Transform.translate(
            offset: Offset(0, 150),
            child: Align(
              alignment: Alignment.center,

              child: Container(
                child:pageIndecator(firstPage.length) ,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity ,
                height: 50,
                child: RaisedButton(
                  padding:
                      EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                  color: Colors.red.shade800,
                  child: Text(
                    'Get starte ',
                    style: TextStyle(
                        fontSize: 20, color: Colors.white, letterSpacing: 1,
                       ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                         // _updateSeen();
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget pageIndecator(int length  ){
    return PageViewIndicator(
      pageIndexNotifier:  pageIndexNotifier ,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red.shade800,
        ),
      ),
    );
  }

//  void _updateSeen() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.setBool( 'seen' , true);
//  }
}
