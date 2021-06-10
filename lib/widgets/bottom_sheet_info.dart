import 'package:flutter/material.dart';

class BottomSheetInfo extends StatefulWidget {
  BottomSheetInfo({Key? key, required this.title, required this.image})
      : super(key: key);

  final String title;
  final String image;

  @override
  _BottomSheetInfoState createState() => _BottomSheetInfoState();
}

class _BottomSheetInfoState extends State<BottomSheetInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(children: <Widget>[
          Icon(
            Icons.remove,
            color: Colors.grey[400],
            size: 50.0,
          ),
          Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
          ),
          Container(
            width: 180,
            margin: EdgeInsets.only(top: 32, bottom: 16),
            child: Image.asset(widget.image),
          ),
        ]));
  }
}
