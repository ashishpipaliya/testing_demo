import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_demo/src/providers/list_view_provider.dart';
import 'package:testing_demo/src/utils/constants.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    final listViewProvider = Provider.of<ListViewProvider>(context);

    return Scaffold(
      appBar: AppBar(
        key: Key(Constants.listViewAppBar),
        title: const Text('Listview Widget Testing'),
      ),
      body: ListView.builder(
        key: ValueKey(Constants.longListKey),
        itemCount: listViewProvider.getLongList.length,
        itemBuilder: (context, index) {
          int singleIndex = listViewProvider.getLongList[index];
          return ListTile(
            key: Key('key$index'),
            title: Text('$singleIndex'),
          );
        },
      ),
    );
  }
}
