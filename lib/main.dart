import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'bottomnavdemo.dart';

void main() {
  // 1
  runApp( // 2
      new MaterialApp( //3
        home: new MyApp(), //4
        routes: <String, WidgetBuilder>{ //5
          '/bottom_navigation': (
              BuildContext context) => new BottomNavigationDemo(),
        },
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Material Design Demos"),

      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(onPressed: () {
              button2(context);
            }, child: new Text("Bottom Navigation"),)
          ],
        ),
      ),
    );
  }
}

void button2(BuildContext context) {
  print("Bottom Navigation");
  Navigator.of(context).pushNamed('/bottom_navigation');
}