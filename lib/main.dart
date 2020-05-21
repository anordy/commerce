
import 'package:commerce/MyApp.dart';
import 'package:commerce/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
     MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Cart()),
      ],
      child: MyApp(),
    ),
  );
  

