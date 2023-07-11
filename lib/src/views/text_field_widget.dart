import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_demo/src/providers/text_field_provider.dart';
import 'package:testing_demo/src/utils/constants.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textFieldProvider = Provider.of<TextFieldProvider>(context);
    return Scaffold(
      key: Key(Constants.scaffoldKey),
      appBar: AppBar(
        title: const Text("TODO List View"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: textFieldProvider.todoList.length,
              itemBuilder: (context, index) {
                String todo = textFieldProvider.todoList[index];
                return ListTile(
                  title: Text(todo),
                );
              },
            ),
          ),
          TextField(
            key: Key(Constants.textFieldKey),
            controller: controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                hintText: "Enter text",
                suffix: TextButton(
                    key: Key(Constants.addTodoButton),
                    onPressed: () {
                      if (controller.text.isNotEmpty) {
                        textFieldProvider.addTodo(controller.text);
                        controller.clear();
                        _scrollController.animateTo(
                            _scrollController.position.maxScrollExtent + 100,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                      } else {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              key: Key(Constants.snackBarKey),
                              content: const Text("Please write something")));
                      }
                    },
                    child: const Text("Add"))),
          )
        ],
      ),
    );
  }
}
