import 'package:flutter/material.dart';
import 'pages/dart_variables.dart';
import 'pages/dart_numbers.dart';
import 'pages/dart_functions.dart';
import 'pages/dart_keywords.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> menuItems = [
    {'title': 'Dart定义变量', 'page': const DartVariablesPage()},
    {'title': 'Dart数字类型', 'page': const DartNumbersPage()},
    {'title': 'Dart函数', 'page': const DartFunctionsPage()},
    {'title': 'Dart关键字', 'page': const DartKeywordsPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(menuItems[index]['title']),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => menuItems[index]['page']),
              );
            },
          );
        },
      ),
    );
  }
}
