import 'package:flutter/material.dart';
import 'widgets/card.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.deepOrange)),
        backgroundColor: Colors.white,
      ),
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        CardFood(title: 'Dia 1', image: 'assets/food/watermelon.png'),
        CardFood(title: 'Dia 2', image: 'assets/food/carrot.png'),
        CardFood(title: 'Dia 3', image: 'assets/food/salad-1.png'),
        CardFood(title: 'Dia 4', image: 'assets/food/tomato.png'),
        CardFood(title: 'Dia 5', image: 'assets/food/lemon.png'),
        CardFood(title: 'Dia 6', image: 'assets/food/radish.png'),
        CardFood(title: 'Dia 7', image: 'assets/food/aubergine.png'),
        CardFood(title: 'Dia 8', image: 'assets/food/raspberry.png'),
        CardFood(title: 'Dia 9', image: 'assets/food/beans.png'),
        CardFood(title: 'Dia 10', image: 'assets/food/honey.png'),
        CardFood(title: 'Dia 11', image: 'assets/food/peach.png'),
        CardFood(title: 'Dia 12', image: 'assets/food/coconut.png'),
        CardFood(title: 'Dia 13', image: 'assets/food/chives.png'),
        CardFood(title: 'Dia 14', image: 'assets/food/orange.png'),
      ]),
    );
  }
}
