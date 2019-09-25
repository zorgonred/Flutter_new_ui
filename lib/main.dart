import 'package:flutter/material.dart';
import 'articles.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme:
          new ThemeData(primarySwatch: Colors.blue, fontFamily: 'RobotoMono'),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(40.0, 1.0, 1.0, 1.0),
            child: Text(
              'News',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'RobotoMono'),
            ),
          ),
          SizedBox(height: 15.0),
          SizedBox(
            height: 10.0,
            child: new Center(
              child: new Container(
                margin: new EdgeInsetsDirectional.only(start: 38.0, end: 15.0),
                height: 5.0,
                color: Colors.orange,
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(40.0, 1.0, 1.0, 1.0),
            child: Text(
              'Latest',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),

          ),
          SizedBox(height: 30.0),
          Container(
            height: 320.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Products(),
              ),


          )

        ],
      ),
    );
  }
}
