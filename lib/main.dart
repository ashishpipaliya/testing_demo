import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_demo/src/providers/counter_provider.dart';
import 'package:testing_demo/src/providers/list_view_provider.dart';
import 'package:testing_demo/src/providers/text_field_provider.dart';
import 'package:testing_demo/src/views/counter.dart';
import 'package:testing_demo/src/views/list_view.dart';
import 'package:testing_demo/src/views/text_field_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>CounterProvider()),
        ChangeNotifierProvider(create: (context) =>ListViewProvider()),
        ChangeNotifierProvider(create: (context) =>TextFieldProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  const Counter(),
        // home: const  ListViewWidget(),
        // home: const  TextFieldWidget(),
      ),
    );
  }
}


