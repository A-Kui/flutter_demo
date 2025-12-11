import 'package:flutter/material.dart';

class DartVariablesPage extends StatelessWidget {
  const DartVariablesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dart定义变量'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1. var 关键字', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('var name = "Hello";  // 自动推断类型'),
              SizedBox(height: 16),
              Text('2. 明确类型', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('String name = "Hello";'),
              Text('int age = 18;'),
              SizedBox(height: 16),
              Text('3. final 关键字', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('final name = "Hello";  // 运行时常量，只能赋值一次'),
              SizedBox(height: 16),
              Text('4. const 关键字', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('const pi = 3.14;  // 编译时常量'),
              SizedBox(height: 16),
              Text('5. dynamic 关键字', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('dynamic value = "Hello";'),
              Text('value = 123;  // 可以改变类型'),
            ],
          ),
        ),
      ),
    );
  }
}
