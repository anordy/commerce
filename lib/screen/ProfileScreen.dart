import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Row(
          children: <Widget>[
           Text('Edit', style: TextStyle(color: Colors.white54),),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text('Profile', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
                    height: 510,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset.zero,
                          blurRadius: 4
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.only(top: 25),
                           child: CircleAvatar(
                             radius: 55,
                               backgroundColor: Colors.grey,
                                    child: CircleAvatar(
                               radius: 50,
                               backgroundImage: AssetImage('assets/images/img5.jpg'),
                             ),
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 10,),
                           child: Text('Anordy John', style: TextStyle(fontSize: 35, color: Colors.black87),),
                         ),

                         
                         Padding(
                           padding: const EdgeInsets.only(top: 7,left: 20,right: 20),
                           child: Center(child: Text("'I love to buy vinny records, Ipads and", style: TextStyle(fontSize: 15, color: Colors.grey),)),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 3,left: 20,right: 20),
                           child: Center(child: Text("other Tech Gadgets! '", style: TextStyle(fontSize: 15, color: Colors.grey),)),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 15, right: 15),
                           child: Divider(),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 5),
                           child: Image.asset('assets/icons/hearticon.png'),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 3,left: 20,right: 20),
                           child: Center(child: Text("Favourite", style: TextStyle(fontSize: 15, color: Colors.grey),)),
                         ),
                           Padding(
                           padding: const EdgeInsets.only(left: 15, right: 15),
                           child: Divider(),
                         ),                          Padding(
                           padding: const EdgeInsets.only(top: 5),
                           child: Image.asset('assets/icons/checkicon.png'),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 3,left: 20,right: 20),
                           child: Center(child: Text("To Buy", style: TextStyle(fontSize: 15, color: Colors.grey),)),
                         ),
                           Padding(
                           padding: const EdgeInsets.only(left: 15, right: 15),
                           child: Divider(),
                         ),                          Padding(
                           padding: const EdgeInsets.only(top: 5),
                           child: Image.asset('assets/icons/carticon.png'),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 3,left: 20,right: 20),
                           child: Center(child: Text("Purchases", style: TextStyle(fontSize: 15, color: Colors.grey),)),
                         ),
                          Padding(
                           padding: const EdgeInsets.only(left: 15, right: 15),
                           child: Divider(),
                         ),                          SizedBox(
                           height: 15,
                         ),
                        RaisedButton(
                        color: Colors.redAccent,
                        textColor: Colors.white,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 100,right: 100,top: 15,bottom: 15),
                             child: Text('LOGOUT'),
                           ),
                          onPressed: () {})
                        
                      ],
                    ),
                  ),
        ),
      ),
    );
  }
}