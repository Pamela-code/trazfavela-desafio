import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trazfavela_desafio/view/view.dart';

void main() {
  testWidgets('Change tab on tap', (WidgetTester tester) async {
    final tabHome = find.text('Home');

    await tester.pumpWidget(const MaterialApp(home: ViewPage()));
    await tester.ensureVisible(tabHome);
    await tester.tap(tabHome);
    await tester.pump();

    expect(find.byKey(const ValueKey('homePage')), findsWidgets);
  });
}
