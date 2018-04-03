import 'package:flutter/material.dart';

import './pages/loginpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     return new MaterialApp(
        home: new LoginPage(),
        theme: new ThemeData(
          primarySwatch: Colors.blue
        ),
      );
    }
  }


 