import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BrowseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.bars),
        title: Text('Browse'),
        actions: <Widget>[
          Icon(FontAwesomeIcons.search),

        ],
        bottom: PreferredSize(
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                       RaisedButton( 
                         color: Colors.redAccent,
                         shape: Border(),
                        child: Text('ALL', style: TextStyle(fontSize: 15)),
                         onPressed: () {

                       }),
                      RaisedButton( 
                        child: Text('TRENDING', style: TextStyle(fontSize: 15)),
                         onPressed: () {

                       }),
                       RaisedButton( 
                        child: Text('NEW', style: TextStyle(fontSize: 15)),
                         onPressed: () {

                       }),
                    ],
          ),
           preferredSize: Size(0, 40)),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                    child: Column(
                      children: <Widget>[
                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('assets/icons/heartitem.png')),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(image: AssetImage('assets/icons/favoriteditemenabled.png')),
                            ),

                          ],
                        ),
                        Container(
                          child: Image.asset('assets/images/iphone1.jpg') ,
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/icons/flag.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('TRENDING',style: TextStyle(color: Colors.redAccent),),
                            )

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('iPad Pro (128 GB) - space Grey',style: TextStyle(color: Colors.grey)),
                              Text("Tshs 4M",style: TextStyle(color: Colors.white60),)
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset('assets/icons/hearticon.png'),
                            ),
                            Text('23 Likes',style: TextStyle(color: Colors.grey)),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Icon(FontAwesomeIcons.comment),
                            ),
                            Text('23 comments',style: TextStyle(color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
              ),
            ))
        ]
      ),
      
    );
  }
}