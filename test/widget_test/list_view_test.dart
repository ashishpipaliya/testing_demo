import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_demo/main.dart';
import 'package:testing_demo/src/utils/constants.dart';

void main() {
  testWidgets('Long List View test for by scrolling it',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byKey(Key(Constants.listViewAppBar)), findsOneWidget);

    final scrollableFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(Key(Constants.listChildKey(10)));
    const positionDelta = 100.0;

    await tester.ensureVisible(scrollableFinder);

    await tester.scrollUntilVisible(
      itemFinder,
      positionDelta,
      scrollable: scrollableFinder,
    );
  });
}
