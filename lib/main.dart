import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          elevation: 0.0,
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            width: 1000,
            height: 1000,
          ),
        ),
      ),
    );
  }
}
