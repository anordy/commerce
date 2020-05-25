import 'package:commerce/models/product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier, DiagnosticableTreeMixin {
  double _salesTaxRate = 0.04;
  double _shippingCostPerItem = 10;
  List<Browse> _availableProducts = [];

  //map of product id and quantity in the cart
  final Map<int, int> _productInCart = <int, int>{};

  //getter
  Map<int, int> get productInCart => Map<int, int>.from(_productInCart);

  //total number of items in the cart
  int get totalCartQuantity =>
      _productInCart.values.fold(0, (int v, int e) => (v + e));

  //total price of the item
  double get subTotalCost {
    return _productInCart.keys.map((int id) {
      int index = _availableProducts.indexWhere((product) => product.id == id);
      return _availableProducts[index].sellingPrice * _productInCart[id];
    }).fold(0.00, (double sum, double e) => sum + e);
  }

  //shipping costs
  double get shippingCost {
    return _shippingCostPerItem *
        _productInCart.values.fold(0.0, (num sum, int e) => sum + e);
  }

  //sales tax for item in the cart
  double get tax => subTotalCost * _salesTaxRate;

  ///total cost to order everything in cart
  double get totalCost => subTotalCost + shippingCost + tax;

  //add products in the cart
  void addProductToCart({@required Browse currentProduct}) {
    if (!productInCart.containsKey(currentProduct.id)) {
      _productInCart[currentProduct.id] = 1;
    } else {
      _productInCart[currentProduct.id]++;
    }
    int index = _availableProducts
        .indexWhere((product) => product.id == currentProduct.id);
    _availableProducts[index].quantity--;

    notifyListeners();
  }

  // remove item to cart
  void removeProductFromcart({@required Browse currentProduct}) {
    if (productInCart.containsKey(currentProduct.id)) {
      if (_productInCart[currentProduct.id] == 1) {
        _productInCart.remove(currentProduct.id);
      } else {
        _productInCart[currentProduct.id]--;
      }
    }
    int index = _availableProducts
        .indexWhere((product) => product.id == currentProduct.id);
    _availableProducts[index].quantity++;

    notifyListeners();
  }

  //futa all kwa mpigo
  void revertCart() {
      _productInCart.forEach((id, num) {
         int index = _availableProducts
        .indexWhere((product) => product.id == id);
    _availableProducts[index].quantity+= num;
       });
       _productInCart.clear();
       notifyListeners();
  }
}
