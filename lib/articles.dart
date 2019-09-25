import 'package:flutter/material.dart';

import 'article_detail.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var news_list = [
    {
      "name": "In The Bag: iris Law",
      "picture": "images/em.jpeg",
      "author": "Jack Johnson",
      "date": "17/06/2019",
      "category": "Latest",
      "story":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    },
    {
      "name": "Dolore eu fugiot",
      "picture": "images/tr.jpg",
      "author": "Jack Johnson",
      "date": "17/06/2019",
      "category": "Latest",
      "story":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    },
    {
      "name": "In The Bag: iris Law",
      "picture": "images/tr.jpg",
      "author": "Jack Johnson",
      "date": "17/06/2019",
      "category": "Latest",
      "story":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    },
    {
      "name": "Dolore eu fugiot",
      "picture": "images/em.jpeg",
      "author": "Jack Johnson",
      "date": "17/06/2019",
      "category": "Latest",
      "story":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: news_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            art_name: news_list[index]['name'],
            art_picture: news_list[index]['picture'],
            art_author: news_list[index]['author'],
            art_date: news_list[index]['date'],
            art_category: news_list[index]['category'],
            art_story: news_list[index]['story'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final art_name;
  final art_picture;
  final art_author;
  final art_date;
  final art_category;
  final art_story;

  Single_prod({
    this.art_name,
    this.art_picture,
    this.art_author,
    this.art_date,
    this.art_category,
    this.art_story,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            //here we are parsing the values of the product to the product details page
            builder: (context) => ProductDetails(
                  art_detail_name: art_name,
                  art_detail_picture: art_picture,
                  art_detail_author: art_author,
                  art_detail_date: art_date,
                  art_detail_category: art_category,
                  art_detail_story: art_story,
                )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: GridTile(
                child: ClipRRect(
              borderRadius: new BorderRadius.circular(17.0),
              child: Image.asset(
                art_picture,
                fit: BoxFit.cover,
              ),
            )),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            art_name,
            style: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
