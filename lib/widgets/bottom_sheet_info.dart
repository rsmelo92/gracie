import 'package:flutter/material.dart';
import './card_header.dart';
import './card_item.dart';

class BottomSheetInfo extends StatefulWidget {
  BottomSheetInfo({Key? key, required this.title, required this.image})
      : super(key: key);

  final String title;
  final String image;

  @override
  _BottomSheetInfoState createState() => _BottomSheetInfoState();
}

class _BottomSheetInfoState extends State<BottomSheetInfo> {
  final breakfast = List<String>.of(
      ['Banana batida com suco de melancia', 'Queijo Minas', 'Polpa de coco']);
  final lunch =
      List<String>.of(['Salada', 'Livre', 'Agua de coco ou suco de cenoura']);
  final dinner = List<String>.of(
      ['Suco de laranja lima', 'Caqui', 'Queijo Minas', 'Tapioca']);

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
                  title: 'Breakfast',
                  items: breakfast),
              CardItem(
                  icon: Icons.restaurant_outlined,
                  title: 'Lunch',
                  items: lunch),
              CardItem(
                  icon: Icons.breakfast_dining_outlined,
                  title: 'Dinner',
                  items: dinner),
            ],
          ))
        ]);
  }
}
