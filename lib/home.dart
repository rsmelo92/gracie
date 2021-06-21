import 'package:flutter/material.dart';
import 'widgets/card_list.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title, style: TextStyle(color: Colors.deepOrange)),
          backgroundColor: Colors.white,
        ),
        body: CardList());
  }
}
