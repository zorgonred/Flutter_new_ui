import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetails extends StatefulWidget {
  final art_detail_name;
  final art_detail_picture;
  final art_detail_author;
  final art_detail_date;
  final art_detail_category;
  final art_detail_story;

  ProductDetails(
      {this.art_detail_name,
      this.art_detail_picture,
      this.art_detail_author,
      this.art_detail_date,
      this.art_detail_category,
      this.art_detail_story});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
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
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 68.0, end: 15.0),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text('Author'),
              subtitle: Text(widget.art_detail_author),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 30.0,
            width: 300.0,
            child: new Center(
              child: new Container(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      1.0, 1.0, 250.0, 1.0),
                  child: Text(
                    widget.art_detail_category,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                margin: new EdgeInsetsDirectional.only(start: 38.0, end: 15.0),
                height: 20.0,
                color: Colors.orange,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 38.0, end: 15.0),
            child: Text(
              widget.art_detail_name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 38.0, end: 15.0),
            child: Text(
              widget.art_detail_date,
              style: TextStyle(color: Colors.black45),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 160,
            width: 160,
            child: GridTile(
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.only(start: 38.0, end: 15.0),
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(17.0),
                  child: Image.asset(
                    widget.art_detail_picture,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 38.0, end: 15.0),
            child: Text(
              widget.art_detail_story,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.orange,
          unselectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bolt),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Text(
                'Latest',
                style: TextStyle(color: Colors.white),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.short_text),
              title: Text(''),
            ),
          ],
          onTap: null,
        ),
      ),
    );
  }
}
