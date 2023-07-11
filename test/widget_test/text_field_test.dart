import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_demo/main.dart';
import 'package:testing_demo/src/utils/constants.dart';

main() {
  testWidgets('Add Todo', (WidgetTester tester) async {
    // render MyApp widget
    await tester.pumpWidget(const MyApp());

    //   make sure page is rendered and visible
    await tester.ensureVisible(find.byKey(Key(Constants.scaffoldKey)));

    //   To-do validation SnackBar
    await tester.tap(find.byKey(Key(Constants.addTodoButton)));
    await tester.pump();
    expect(find.byKey(Key(Constants.snackBarKey)), findsOneWidget);

    //   add to-do
    await tester.enterText(find.byKey(Key(Constants.textFieldKey)),
        "This todo is created using test");
    await tester.tap(find.byKey(Key(Constants.addTodoButton)));
    await tester.pump();

    // verify to-do is added
    expect(find.text("This todo is created using test"), findsOneWidget);
  });
}
