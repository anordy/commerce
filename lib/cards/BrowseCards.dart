import 'package:commerce/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BrowseCard extends StatelessWidget {
  final Browse browses;

  const BrowseCard({Key key, this.browses,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(               
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey,
                         offset: Offset.zero,
                         spreadRadius: 1
                         )
                     ],
                      color: Colors.white),
                      child: Column(
                        children: <Widget>[
                          Row(
                            
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 5),
                                child: Image(image: AssetImage('assets/icons/heartitem.png'))
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8, top: 5),
                                child: Image(image: AssetImage('assets/icons/favoriteditemenabled.png')),
                              ),

                            ],
                          ),
                          Container(
                            height: 150,
                            child: Image.asset(browses.image,scale: 2,) ,
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
                                Text(browses.type,style: TextStyle(color: Colors.black)),
                                Text("Tshs 4M",style: TextStyle(color: Colors.white60),)
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10,bottom: 8),
                                child: Image.asset('assets/icons/hearticon.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text('  23 Likes',style: TextStyle(color: Colors.grey)),
                              ),
                            
                              Padding(
                                padding: const EdgeInsets.only(left: 60, bottom: 8),
                                child: Icon(FontAwesomeIcons.comment),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text('  23 comments',style: TextStyle(color: Colors.grey)),
                              ),
                            ],
                          )
                        ],
                      ),
                ),
    );
            
        
      
  
  }
}