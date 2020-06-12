import 'package:commerce/models/product_model.dart';
import 'package:commerce/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  final Product products;

  const ProductPage({Key key, @required this.products}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int index;

  bool pressed = false;
  // int _index = 0;

  // void _checkedIndex(index) {
  //   setState(() {
  //     _index = index;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              FontAwesomeIcons.angleLeft,
              size: 30,
            )),
        title: Center(
            child: Text(
          'Product  Details',
          style: TextStyle(color: Colors.white),
        )),
        actions: <Widget>[
          InkWell(
              onTap: () {}, child: Image.asset('assets/icons/searchbutton.png'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 650,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset.zero, spreadRadius: 1)
                ],
                color: Colors.white),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                          image: AssetImage('assets/icons/heartitem.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                          image: AssetImage(
                              'assets/icons/favoriteditemenabled.png')),
                    ),
                  ],
                ),
                Container(
                  height: 150,
                  child: Image.asset(widget.products.image),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/icons/flag.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'TRENDING',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(widget.products.type,
                          style: TextStyle(color: Colors.black)),
                      Text(
                        "Tshs 4M",
                        style: TextStyle(color: Colors.white60),
                      )
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset('assets/icons/hearticon.png'),
                    ),
                    Text('  23 Likes', style: TextStyle(color: Colors.grey)),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Icon(FontAwesomeIcons.comment),
                    ),
                    Text('  23 comments', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                 RaisedButton(
                        color: !pressed ? Colors.redAccent: Colors.green,
                        textColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 100, right: 100, top: 15, bottom: 15),
                          child: Text('ADD TO CART'),
                        ),
                        onPressed: () {
                          setState(() {
                            pressed = !pressed;
                          });
                          products.addProductToCart(
                              currentProduct:   widget.products);
                        })
                    ,
                SizedBox(height: 10),
                Text(
                  '239 PEOPLE LIKE THIS',
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/img2.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/img3.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/img4.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/img5.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/img6.jpg'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('AVERAGE REVIEW', style: TextStyle(color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/icons/starfilled.png',
                          scale: 1.4),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/icons/starfilled.png',
                          scale: 1.4),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/icons/starfilled.png',
                          scale: 1.4),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/icons/starfilled.png',
                          scale: 1.4),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Image.asset('assets/icons/starempty.png', scale: 1.4),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
