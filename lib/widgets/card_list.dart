import 'package:flutter/material.dart';
import '../data/FoodItem.dart';
import './card.dart';

// TODO: add breakfast, lunch and dinner to FoodItem
class CardList extends StatelessWidget {
  CardList({Key? key}) : super(key: key);

  final foodList = List<FoodItem>.of([
    FoodItem(title: 'Day 1', image: 'assets/food/watermelon.png'),
    FoodItem(title: 'Day 2', image: 'assets/food/carrot.png'),
    FoodItem(title: 'Day 3', image: 'assets/food/salad-1.png'),
    FoodItem(title: 'Day 4', image: 'assets/food/tomato.png'),
    FoodItem(title: 'Day 5', image: 'assets/food/lemon.png'),
    FoodItem(title: 'Day 6', image: 'assets/food/radish.png'),
    FoodItem(title: 'Day 7', image: 'assets/food/aubergine.png'),
    FoodItem(title: 'Day 8', image: 'assets/food/raspberry.png'),
    FoodItem(title: 'Day 9', image: 'assets/food/beans.png'),
    FoodItem(title: 'Day 10', image: 'assets/food/honey.png'),
    FoodItem(title: 'Day 11', image: 'assets/food/peach.png'),
    FoodItem(title: 'Day 12', image: 'assets/food/coconut.png'),
    FoodItem(title: 'Day 13', image: 'assets/food/chives.png'),
    FoodItem(title: 'Day 14', image: 'assets/food/orange.png'),
  ]);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: foodList.length,
            itemBuilder: (BuildContext ctx, index) {
              return CardFood(
                title: foodList[index].title,
                image: foodList[index].image,
              );
            }));
  }
}
