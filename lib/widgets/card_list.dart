import 'package:flutter/material.dart';
import '../data/FoodItem.dart';
import './card.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  final foodList = List<FoodItem>.of([
    FoodItem(title: 'Dia 1', image: 'assets/food/watermelon.png'),
    FoodItem(title: 'Dia 2', image: 'assets/food/carrot.png'),
    FoodItem(title: 'Dia 3', image: 'assets/food/salad-1.png'),
    FoodItem(title: 'Dia 4', image: 'assets/food/tomato.png'),
    FoodItem(title: 'Dia 5', image: 'assets/food/lemon.png'),
    FoodItem(title: 'Dia 6', image: 'assets/food/radish.png'),
    FoodItem(title: 'Dia 7', image: 'assets/food/aubergine.png'),
    FoodItem(title: 'Dia 8', image: 'assets/food/raspberry.png'),
    FoodItem(title: 'Dia 9', image: 'assets/food/beans.png'),
    FoodItem(title: 'Dia 10', image: 'assets/food/honey.png'),
    FoodItem(title: 'Dia 11', image: 'assets/food/peach.png'),
    FoodItem(title: 'Dia 12', image: 'assets/food/coconut.png'),
    FoodItem(title: 'Dia 13', image: 'assets/food/chives.png'),
    FoodItem(title: 'Dia 14', image: 'assets/food/orange.png'),
  ]);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: FoodList.length,
            itemBuilder: (BuildContext ctx, index) {
              return CardFood(
                title: foodList[index].title,
                image: foodList[index].image,
              );
            }));
  }
}
