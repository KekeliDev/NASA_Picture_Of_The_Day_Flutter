import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NASA Pictiure of the Day!"),
      backgroundColor: Colors.amberAccent,),
      body: ListView.builder(
        itemCount: data == null ? : data.length;,
      ) 

      
    );
  }
}