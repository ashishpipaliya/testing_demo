import 'package:flutter/foundation.dart';

class ListViewProvider extends ChangeNotifier {
  ListViewProvider() {
    generateList();
  }

  final List<int> _longList = [];

  List<int> get getLongList => _longList;

  void generateList() {
    _longList.addAll(List.generate(1000, (index) => index));
    notifyListeners();
  }
}
