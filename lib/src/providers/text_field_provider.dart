import 'package:flutter/foundation.dart';

class TextFieldProvider extends ChangeNotifier {
  final List<String> _todoList = <String>[];

  List<String> get todoList => _todoList;

  void addTodo(String value) {
    _todoList.add(value);
    notifyListeners();
  }

  void deleteTodo(int index) {
    _todoList.removeAt(index);
    notifyListeners();
  }
}
