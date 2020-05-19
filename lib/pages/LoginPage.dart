import 'package:commerce/pages/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Form(
                      key: _formKey,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 170),
                      child: Column(
                   children: <Widget>[
                       
                        TextFormField(
                          validator: (value) {
                            if(value.isEmpty) {
                              return 'please fill some text';
                            }
                            return null;
                          },
                            decoration: InputDecoration(
                              labelText: "E-mail or Username",
                            ),
                        ),
                       
                        TextFormField(
                          validator: (value) {
                            if(value.isEmpty) {
                              return 'pasword is required';
                            } 
                            return null;
                          },
                              decoration: InputDecoration(
                                labelText: 'Password',
                              
                              ),
                        ),
                         
                        SizedBox(
                          height: 20
                        ),
                        InkWell(
                          onTap: () {

                          },
                          child: Text('Forgot Password ?',style: TextStyle(color:Colors.blue ),)),
                        SizedBox(
                          height: 20
                        ),
                        RaisedButton(
                          color: Colors.green,
                          child: Text('Sign In'),
                          onPressed: () {
                             if(_formKey.currentState.validate()) {
                               Navigator.push(context, MaterialPageRoute(
                                 builder: (context) => HomePage()));
                             }
                          })
   
                   ],
                 ),
                    ),
         ),
            
       ),
    );
  }
}