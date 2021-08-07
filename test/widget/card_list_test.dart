import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gracie/widgets/card_list.dart';

void main() {
  testWidgets('Card List verification test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: CardList()));

    expect(find.text('Dia 4'), findsOneWidget);

    await tester.tap(find.text('Dia 4'));
    await tester.pumpAndSettle();

    expect(find.text('Manga'), findsOneWidget);
    expect(find.text('Salada'), findsOneWidget);
    expect(find.text('Café da Manhã'), findsOneWidget);

    expect(find.text('Caqui'), findsNothing);

    await tester.drag(find.text('Café da Manhã'), const Offset(0.0, -500.0));
    await tester.pumpAndSettle();

    expect(find.text('Caqui'), findsOneWidget);
  });
}
