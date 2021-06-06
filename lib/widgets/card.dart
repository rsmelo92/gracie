import 'package:flutter/material.dart';

class CardFood extends StatefulWidget {
  CardFood({Key? key, required this.title, required this.image})
      : super(key: key);

  final String title;
  final String image;

  @override
  _CardFoodState createState() => _CardFoodState();
}

class _CardFoodState extends State<CardFood> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      splashColor: Colors.pink.withAlpha(30),
      onTap: () {
        print('Card tapped.');
      },
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset(widget.image),
            margin: EdgeInsets.only(top: 32, bottom: 22),
            height: 96.0,
          ),
          Expanded(
            child: Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ),
        ],
      ),
    ));
  }
}
