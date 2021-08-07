import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gracie/widgets/bottom_sheet_info.dart';
import 'package:gracie/widgets/card_header.dart';

void main() {
  testWidgets('Bottom Sheet Info verification test',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: BottomSheetInfo(
            title: 'Bottom Sheet',
            image: 'assets/food/orange.png',
            breakfast: ['Laranja'],
            lunch: ['Salada'],
            dinner: ['Sopa'])));

    expect(find.byType(CardHeader), findsOneWidget);
    expect(find.text("Bottom Sheet"), findsOneWidget);

    expect(find.text('Café da Manhã'), findsOneWidget);
    expect(find.byIcon(Icons.local_cafe_outlined), findsOneWidget);
    expect(find.text('Laranja'), findsOneWidget);

    expect(find.text('Almoço'), findsOneWidget);
    expect(find.byIcon(Icons.restaurant_outlined), findsOneWidget);
    expect(find.text('Salada'), findsOneWidget);

    expect(find.text('Jantar'), findsOneWidget);
    expect(find.byIcon(Icons.breakfast_dining_outlined), findsOneWidget);
    expect(find.text('Sopa'), findsOneWidget);
  });
}
