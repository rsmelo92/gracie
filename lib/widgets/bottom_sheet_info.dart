import 'package:flutter/material.dart';
import './card_header.dart';
import './card_item.dart';

class BottomSheetInfo extends StatefulWidget {
  BottomSheetInfo(
      {Key? key,
      required this.title,
      required this.image,
      required this.breakfast,
      required this.lunch,
      required this.dinner})
      : super(key: key);

  final String title;
  final String image;
  final List<String> breakfast;
  final List<String> lunch;
  final List<String> dinner;

  @override
  _BottomSheetInfoState createState() => _BottomSheetInfoState();
}

class _BottomSheetInfoState extends State<BottomSheetInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CardHeader(title: widget.title, image: widget.image),
          Expanded(
              child: ListView(
            padding: EdgeInsets.only(top: 16, bottom: 64, right: 20, left: 12),
            shrinkWrap: true,
            children: <Widget>[
              CardItem(
                  icon: Icons.local_cafe_outlined,
                  title: 'Café da Manhã',
                  items: widget.breakfast),
              CardItem(
                  icon: Icons.restaurant_outlined,
                  title: 'Almoço',
                  items: widget.lunch),
              CardItem(
                  icon: Icons.breakfast_dining_outlined,
                  title: 'Jantar',
                  items: widget.dinner),
            ],
          ))
        ]);
  }
}
