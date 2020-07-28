import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://px.cdn.bigbangnews.com/bigbang/022020/1581719802939/ragnar.webp?cw=900&ch=600&extw=jpg'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('RL'),
              backgroundColor: Colors.brown,

            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          image: NetworkImage('https://vader.news/__export/1588978155648/sites/gadgets/img/2020/05/08/travis-fimmel.jpg_691115875.jpg'),
        ),
      )
    );
  }
}