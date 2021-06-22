import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  CardItem(
      {Key? key, required this.title, required this.items, required this.icon})
      : super(key: key);

  final IconData icon;
  final String title;
  final List<String> items;

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 12, right: 24, left: 24),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 24),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: widget.items.length,
            itemBuilder: (BuildContext ctx, index) {
              return Card(
                child: Container(
                    height: 72,
                    padding: EdgeInsets.only(top: 8),
                    child: ListTile(
                      leading:
                          Icon(widget.icon, size: 56, color: Colors.deepOrange),
                      title: Text(widget.items[index]),
                      trailing: Icon(
                          Icons.info_outlined), // TODO: add onClick fetch info
                    )),
              );
            })
      ],
    );
  }
}
