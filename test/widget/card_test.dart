import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gracie/widgets/card.dart';

void main() {
  testWidgets('Card verification test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: CardFood(
            title: 'Card',
            image: 'assets/food/orange.png',
            breakfast: ['Laranja'],
            lunch: ['Salada'],
            dinner: ['Sopa'])));

    expect(find.text('Card'), findsOneWidget);

    await tester.tap(find.text('Card'));
    await tester.pumpAndSettle();

    expect(find.text('Laranja'), findsOneWidget);
    expect(find.text('Salada'), findsOneWidget);
    expect(find.text('Sopa'), findsOneWidget);
  });
}
