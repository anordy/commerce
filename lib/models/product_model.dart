import 'package:flutter/material.dart';

class Product {
  final String image;
  final String type;
  final String avatar;
  final int id;
  final double sellingPrice;
  int quantity;

  Product({@required this.avatar,this.id,this.sellingPrice,this.quantity, @required this.image, @required this.type});
}

List<Product> products = [
      Product(
        id: 1,
      image: 'assets/images/iphone1.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/images/img1.jpg'),
  Product(
           id: 2,
      image: 'assets/images/3.jpg',
      type: 'Gamepad X-box - dark blue',
      avatar: 'assets/images/img2.jpg'),
  Product(
           id: 3,
      image: 'assets/images/2.jpg',
      type: 'Headphones) - space Grey',
      avatar: 'assets/images/img3.jpg'),
  Product(
           id: 4,
      image: 'assets/images/5.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/images/img4.jpg'),
  Product(
           id: 5,
      image: 'assets/images/1.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/images/img5.jpg'),
  Product(
           id: 6,
      image: 'assets/images/6.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/images/img6.jpg'),
  Product(
           id: 7,
      image: 'assets/images/iphone2.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/avatar/img4.jpg'),
  ];