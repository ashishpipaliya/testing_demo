import 'package:flutter_test/flutter_test.dart';
import 'package:testing_demo/src/providers/text_field_provider.dart';

void main() {
  test("Text field and TODO list test", () async {
    final textFieldProvider = TextFieldProvider();

    // add to-do
    textFieldProvider.addTodo("This is todo added by Unit test");

    // Check if to-do is added in list
    expect(textFieldProvider.todoList.length, 1);

    // check if to-do is added at 0th index
    expect(textFieldProvider.todoList.first, 'This is todo added by Unit test');

    //delete to-do at 0th index
    textFieldProvider.deleteTodo(0);

    // verify that length of list is 0
    expect(textFieldProvider.todoList.length, 0);
  });
}
