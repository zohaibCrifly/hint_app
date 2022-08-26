import 'package:flutter/material.dart';
import 'package:hints/Pages/categorey.dart';
import 'package:hints/Pages/navhome.dart';
import 'package:hints/Pages/first.dart';
import 'package:hints/Pages/postlist.dart';
import 'package:hints/Pages/profile.dart';
import 'package:hints/Pages/search.dart';
// import 'package:hints/Pages/signup.dart';
import 'package:hints/Pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hints',
      theme: ThemeData(

          // primarySwatch: Colors.blue,
          fontFamily: 'Georgia'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Firstpage();
    // Welcomepage();
    // Createaccount();
    //PostList();
    //Search();
    //Profile();
    //NavHome();
    //CategoreyPost();
  }
}
