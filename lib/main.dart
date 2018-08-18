import 'package:eneagram_app/pages/initial_page.dart';
import 'package:eneagram_app/pages/menu_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.purple[600],
        accentColor: Color(0xFFDFB966),
        bottomAppBarColor: Colors.purple[600]
      ),
      home: InitialPage(),
    );
  }
}

