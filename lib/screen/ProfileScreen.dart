import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
                 Row(
                   children: <Widget>[
                    Text('Edit', style: TextStyle(color: Colors.white),),
                    Text('Profile', style: TextStyle(color: Colors.white),)

                   ],
                 )

        ],
      ),
      
    );
  }
}