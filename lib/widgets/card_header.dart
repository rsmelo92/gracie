import 'package:flutter/material.dart';

class CardHeader extends StatefulWidget {
  CardHeader({Key? key, required this.title, required this.image})
      : super(key: key);

  final String title;
  final String image;

  @override
  _CardHeaderState createState() => _CardHeaderState();
}

class _CardHeaderState extends State<CardHeader> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Icon(
        Icons.remove,
        color: Colors.grey[400],
        size: 50.0,
      ),
      Text(
        widget.title,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
      ),
      Container(
        width: 150,
        margin: EdgeInsets.only(top: 20, bottom: 16),
        child: Image.asset(widget.image),
      ),
    ]));
  }
}
