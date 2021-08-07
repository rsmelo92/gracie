import 'package:test/test.dart';
import 'package:gracie/data/FoodItem.dart';

void main() {
  test('FoodItem should have correctly values', () {
    final foodItem = FoodItem(
        title: 'Dia 1',
        image: 'assets/food/watermelon.png',
        breakfast: [
          'Banana batida com suco de melancia'
        ],
        lunch: [
          'Salada',
        ],
        dinner: [
          'Suco de laranja lima',
        ]);

    expect(foodItem.title, equals('Dia 1'));
    expect(foodItem.image, equals('assets/food/watermelon.png'));
    expect(foodItem.breakfast, contains('Banana batida com suco de melancia'));
    expect(foodItem.lunch, contains('Salada'));
    expect(foodItem.dinner, contains('Suco de laranja lima'));
  });
}
