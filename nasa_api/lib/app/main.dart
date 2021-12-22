import 'package:flutter/material.dart';
import 'package:lib/main.dart';

void main() {
  runApp(MyApp());
}

class StarWarsData extends StatefulWidget {
  @override
  StarWarsDataState createState() => StarWarsDataState();
}

class StarWarsDataState extends State<StarWarsData> {
  final String url = "https://images-api.nasa.gov/";
  List data;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }