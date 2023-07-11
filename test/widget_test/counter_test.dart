import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_demo/main.dart';
import 'package:testing_demo/src/utils/constants.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // find 2 floating action button one for increment and another for decrement
    expect(find.byType(FloatingActionButton), findsNWidgets(2));
    
    // check if initial value is 0
    expect(find.text('0'), findsOneWidget);

    // tap increment button
    await tester.tap(find.byKey(Key(Constants.counterIncrementKey)));

    // UI rebuild
    await tester.pump();

    // check if value increased by 1, so value will be 1
    expect(find.text('1'), findsOneWidget);

    // tap increment button
    await tester.tap(find.byKey(Key(Constants.counterDecrementKey)));
    // UI rebuild
    await tester.pump();

    // check if value decrement by 1, so value will be 0
    expect(find.text('0'), findsOneWidget);
  });
}
