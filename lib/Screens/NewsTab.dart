import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsTab extends StatefulWidget {
  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _header(),
          _theNews(),

        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .25,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage("images/news.png"), fit: BoxFit.cover)),
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'A lot of animals need your help',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          Text(
            'Unseen they suffer unheard they cry',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
  Widget _theNews() {
    return Container(
      color: Colors.grey.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          drowSectionTitl('Top News'),
          Padding(
            padding: EdgeInsets.all(8),
            child: Card(
              child: Column(
                children: <Widget>[
                  Thetopnews(),
                  Div(),
                  Thetopnews(),
                  Div(),
                  Thetopnews(),
                  Div(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                drowSectionTitl('Recent News'),

              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget Thetopnews(){
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: SizedBox(
              width:130 ,
              height: 130 ,
              child: Image(
                image: ExactAssetImage('images/dog1.jpg'),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('the hangry Dogs '
                    'in this cold How it worm ?!',
                    style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('CNN '),
                    SizedBox(
                      width: 60,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.access_alarm),
                        Text('15 min')
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget Div(){
    return Container(
      height: 1,
      color:Colors.grey.shade100
    );
  }
  Widget drowSectionTitl(String title) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        title ,
        style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
