import 'package:flutter/material.dart';

class DartNumbersPage extends StatelessWidget {
  const DartNumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dart数字类型'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1. int 整数类型', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('int age = 18;'),
              Text('int hexValue = 0xDEADBEEF;  // 十六进制'),
              SizedBox(height: 16),
              Text('2. double 浮点类型', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('double pi = 3.14;'),
              Text('double exponent = 1.42e5;  // 科学计数法'),
              SizedBox(height: 16),
              Text('3. num 数字类型', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('num x = 1;  // 可以是int或double'),
              Text('num y = 1.5;'),
              SizedBox(height: 16),
              Text('4. 常用方法', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('int.parse("123")  // 字符串转int'),
              Text('double.parse("3.14")  // 字符串转double'),
              Text('123.toString()  // 数字转字符串'),
              Text('3.14159.toStringAsFixed(2)  // 保留小数位'),
            ],
          ),
        ),
      ),
    );
  }
}
