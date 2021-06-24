import 'package:flutter/material.dart';
import '../data/FoodItem.dart';
import './card.dart';

class CardList extends StatelessWidget {
  CardList({Key? key}) : super(key: key);

  final foodList = List<FoodItem>.of([
    FoodItem(title: 'Dia 1', image: 'assets/food/watermelon.png', breakfast: [
      'Banana batida com suco de melancia',
      'Queijo Minas',
      'Polpa de coco'
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Suco de laranja lima',
      'Caqui',
      'Queijo Minas',
      'Tapioca'
    ]),
    FoodItem(title: 'Dia 2', image: 'assets/food/carrot.png', breakfast: [
      'Mamão com ou sem mel',
      'Queijo Minas',
      'Tapioca'
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Suco de vegetais',
      'Abacate amassado temperado com azeite e sal',
      'Torrada de pão centeio ou integral'
    ]),
    FoodItem(title: 'Dia 3', image: 'assets/food/salad-1.png', breakfast: [
      'Ovos',
      'Pão integral',
      'Queijo derretido',
      'Café ou chá',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Suco de laranja lima',
      'Queijo minas',
      'Tapioca'
    ]),
    FoodItem(title: 'Dia 4', image: 'assets/food/tomato.png', breakfast: [
      'Manga',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Caqui',
      'Pinha',
      'Polpa de coco',
      'Torrada de pão centeio ou integral'
    ]),
    FoodItem(title: 'Dia 5', image: 'assets/food/lemon.png', breakfast: [
      'Bananas batidas com suco de melão',
      'Requeijão ou polpa de coco',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Pêra doce',
      'Queijo minas',
      'Tapioca',
    ]),
    FoodItem(title: 'Dia 6', image: 'assets/food/radish.png', breakfast: [
      'Suco de vegetais',
      'Abacate amassado temperado com azeite e sal',
      'Torrada de pão centeio ou integral'
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Suco de laranja lima',
      'Banana',
    ]),
    FoodItem(title: 'Dia 7', image: 'assets/food/aubergine.png', breakfast: [
      'Banana batida com suco de melancia',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Figo',
      'Mel',
      'Tapioca',
    ]),
    FoodItem(title: 'Dia 8', image: 'assets/food/raspberry.png', breakfast: [
      'Sanduíche de queijo quente (pão integral ou centeio)',
      'Café com leite',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Vitamina: maçã, mamão, polpa de coco e banana',
    ]),
    FoodItem(title: 'Dia 9', image: 'assets/food/beans.png', breakfast: [
      'Pinha',
      'Melão',
      'Polpa de coco',
      'Tapioca',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Suco de melancia',
      'Caqui',
      'Queijo minas',
      'Tapioca',
    ]),
    FoodItem(title: 'Dia 10', image: 'assets/food/honey.png', breakfast: [
      'Bananas batidas com suco de melão',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Maçã assada',
      'Queijo minas e mel de abelhas',
      'Tapioca ou torrada de pão integral/centeio',
    ]),
    FoodItem(title: 'Dia 11', image: 'assets/food/peach.png', breakfast: [
      'Mamão',
      'Melão',
      'Banana',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Suco de vegetais',
      'Abacate amassado temperado com azeite e sal',
      'Torrada de pão centeio ou integral'
    ]),
    FoodItem(title: 'Dia 12', image: 'assets/food/coconut.png', breakfast: [
      'Salada de frutas: figo, pêra, maçã, laranja lima e banana',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Melancia',
      'Queijo minas',
      'Tâmaras',
      'Torrada de pão de centeio ou tapioca',
    ]),
    FoodItem(title: 'Dia 13', image: 'assets/food/chives.png', breakfast: [
      'Manga',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Suco de laranja lima',
      'Goiabada cascão',
      'Queijo Minas',
      'Tapioca',
    ]),
    FoodItem(title: 'Dia 14', image: 'assets/food/orange.png', breakfast: [
      'Aveia cozida',
      'Uva passa',
      'Água de coco',
    ], lunch: [
      'Salada',
      'Livre',
      'Agua de coco ou suco de cenoura'
    ], dinner: [
      'Melancia',
      'Queijo Minas',
      'Tapioca',
    ]),
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
                breakfast: foodList[index].breakfast,
                lunch: foodList[index].lunch,
                dinner: foodList[index].dinner,
              );
            }));
  }
}
