import 'package:flutter/material.dart';

class Browse {
  final String image;
  final String type;
  final String avatar;
  final int id;
  final double sellingPrice;
  int quantity;

  Browse({@required this.avatar,this.id,this.sellingPrice,this.quantity, @required this.image, @required this.type});
}

List<Browse> browses = <Browse>[
  Browse(
      image: 'assets/images/iphone1.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/images/img1.jpg'),
  Browse(
      image: 'assets/images/3.jpg',
      type: 'Gamepad X-box - dark blue',
      avatar: 'assets/images/img2.jpg'),
  Browse(
      image: 'assets/images/2.jpg',
      type: 'Headphones) - space Grey',
      avatar: 'assets/images/img3.jpg'),
  Browse(
      image: 'assets/images/5.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/images/img4.jpg'),
  Browse(
      image: 'assets/images/1.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/images/img5.jpg'),
  Browse(
      image: 'assets/images/6.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/images/img6.jpg'),
  Browse(
      image: 'assets/images/iphone2.jpg',
      type: 'iPad Pro (128 GB) - space Grey',
      avatar: 'assets/avatar/img4.jpg'),
];
