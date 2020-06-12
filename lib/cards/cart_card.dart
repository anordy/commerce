import 'package:commerce/models/product_model.dart';
import 'package:commerce/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class CartCard extends StatelessWidget {
  final Product product;
  final int quantity;

  const CartCard({Key key, @required this.product, @required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Cart>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListTile(
          leading: Image.asset(product.image),
          title: Text(product.type),
          subtitle: Text('quantity  ' + quantity.toString()),
          trailing: IconButton(
              icon: Icon(FontAwesomeIcons.minusCircle),
              onPressed: () {
                products.removeProductFromcart(currentProduct: product);
              }),
        ),
      ),
    );
  }
}
