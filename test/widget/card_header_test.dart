import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gracie/widgets/card_header.dart';

void main() {
  testWidgets('Card Header verification test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: CardHeader(
            title: 'Card Test', image: 'assets/food/watermelon.png')));

    expect(find.text('Card Test'), findsOneWidget);
    expect(find.byIcon(Icons.remove), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}
