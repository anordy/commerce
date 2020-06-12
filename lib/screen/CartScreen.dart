import 'package:commerce/cards/cart_card.dart';
import 'package:commerce/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    List<Widget> _createShoppingCart() {
      return cart.productInCart.keys
          .map((int id) => CartCard(
              product: cart.getProductById(id),
              quantity: cart.productInCart[id]))
          .toList();
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 500,
              child: cart.availableProducts.length == 0
                  ? Text('No items in cart')
                  : ListView(
                    padding: EdgeInsets.all(16),
                    children: _createShoppingCart(),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
