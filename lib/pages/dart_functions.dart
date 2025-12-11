import 'package:flutter/material.dart';

class DartFunctionsPage extends StatelessWidget {
  const DartFunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dart函数'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1. 基本函数定义', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('int add(int a, int b) {\n  return a + b;\n}'),
              SizedBox(height: 16),
              Text('2. 箭头函数', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('int add(int a, int b) => a + b;'),
              SizedBox(height: 16),
              Text('3. 可选参数', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('void greet(String name, [String? greeting]) {}'),
              SizedBox(height: 16),
              Text('4. 命名参数', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('void greet({required String name, String greeting = "Hi"}) {}'),
              SizedBox(height: 16),
              Text('5. 匿名函数', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('var list = [1, 2, 3];\nlist.forEach((item) {\n  print(item);\n});'),
              SizedBox(height: 16),
              Text('6. 高阶函数', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Function makeAdder(int addBy) {\n  return (int i) => addBy + i;\n}'),
            ],
          ),
        ),
      ),
    );
  }
}
