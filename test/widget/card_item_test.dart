import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gracie/widgets/card_item.dart';

void main() {
  testWidgets('Card Item verification test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: CardItem(
            title: 'Card Item Test',
            items: ['Melão', 'Laranja'],
            icon: Icons.add)));

    expect(find.text('Card Item Test'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsWidgets);
    expect(find.text('Melão'), findsOneWidget);
    expect(find.text('Laranja'), findsOneWidget);
  });
}
