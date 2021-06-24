import 'package:flutter/material.dart';
import 'bottom_sheet_info.dart';

class CardFood extends StatefulWidget {
  CardFood(
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
  _CardFoodState createState() => _CardFoodState();
}

class _CardFoodState extends State<CardFood> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      splashColor: Colors.pink.withAlpha(30),
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset(widget.image),
            margin: EdgeInsets.only(top: 32, bottom: 22),
            height: 96.0,
          ),
          Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ],
      ),
    ));
  }

  void onTap() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        builder: (context) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.90,
              // TODO: Avoid passing from widget to widget
              child: BottomSheetInfo(
                  title: widget.title,
                  image: widget.image,
                  breakfast: widget.breakfast,
                  lunch: widget.lunch,
                  dinner: widget.dinner));
        });
  }
}
