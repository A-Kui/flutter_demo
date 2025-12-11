import 'package:flutter/material.dart';

class DartKeywordsPage extends StatelessWidget {
  const DartKeywordsPage({super.key});

  static const List<Map<String, String>> keywords = [
    {'keyword': 'abstract', 'desc': '定义抽象类'},
    {'keyword': 'as', 'desc': '类型转换'},
    {'keyword': 'assert', 'desc': '断言，调试时检查条件'},
    {'keyword': 'async', 'desc': '标记异步函数'},
    {'keyword': 'await', 'desc': '等待异步操作完成'},
    {'keyword': 'base', 'desc': '基类修饰符'},
    {'keyword': 'break', 'desc': '跳出循环或switch'},
    {'keyword': 'case', 'desc': 'switch语句的分支'},
    {'keyword': 'catch', 'desc': '捕获异常'},
    {'keyword': 'class', 'desc': '定义类'},
    {'keyword': 'const', 'desc': '编译时常量'},
    {'keyword': 'continue', 'desc': '跳过当前循环迭代'},
    {'keyword': 'covariant', 'desc': '协变，允许子类重写参数类型'},
    {'keyword': 'default', 'desc': 'switch的默认分支'},
    {'keyword': 'deferred', 'desc': '延迟加载库'},
    {'keyword': 'do', 'desc': 'do-while循环'},
    {'keyword': 'dynamic', 'desc': '动态类型'},
    {'keyword': 'else', 'desc': '条件语句的否则分支'},
    {'keyword': 'enum', 'desc': '定义枚举类型'},
    {'keyword': 'export', 'desc': '导出库'},
    {'keyword': 'extends', 'desc': '继承类'},
    {'keyword': 'extension', 'desc': '扩展方法'},
    {'keyword': 'external', 'desc': '外部实现的函数'},
    {'keyword': 'factory', 'desc': '工厂构造函数'},
    {'keyword': 'false', 'desc': '布尔值假'},
    {'keyword': 'final', 'desc': '运行时常量，只能赋值一次'},
    {'keyword': 'finally', 'desc': '异常处理的最终执行块'},
    {'keyword': 'for', 'desc': 'for循环'},
    {'keyword': 'Function', 'desc': '函数类型'},
    {'keyword': 'get', 'desc': '定义getter访问器'},
    {'keyword': 'hide', 'desc': '导入时隐藏指定成员'},
    {'keyword': 'if', 'desc': '条件语句'},
    {'keyword': 'implements', 'desc': '实现接口'},
    {'keyword': 'import', 'desc': '导入库'},
    {'keyword': 'in', 'desc': 'for-in循环中使用'},
    {'keyword': 'interface', 'desc': '接口修饰符'},
    {'keyword': 'is', 'desc': '类型检查'},
    {'keyword': 'late', 'desc': '延迟初始化变量'},
    {'keyword': 'library', 'desc': '定义库'},
    {'keyword': 'mixin', 'desc': '定义混入类'},
    {'keyword': 'new', 'desc': '创建对象（可省略）'},
    {'keyword': 'null', 'desc': '空值'},
    {'keyword': 'on', 'desc': '指定捕获的异常类型/mixin约束'},
    {'keyword': 'operator', 'desc': '运算符重载'},
    {'keyword': 'part', 'desc': '分部库'},
    {'keyword': 'required', 'desc': '必需的命名参数'},
    {'keyword': 'rethrow', 'desc': '重新抛出异常'},
    {'keyword': 'return', 'desc': '返回值'},
    {'keyword': 'sealed', 'desc': '密封类修饰符'},
    {'keyword': 'set', 'desc': '定义setter访问器'},
    {'keyword': 'show', 'desc': '导入时只显示指定成员'},
    {'keyword': 'static', 'desc': '静态成员'},
    {'keyword': 'super', 'desc': '引用父类'},
    {'keyword': 'switch', 'desc': 'switch语句'},
    {'keyword': 'sync', 'desc': '同步生成器函数'},
    {'keyword': 'this', 'desc': '引用当前对象'},
    {'keyword': 'throw', 'desc': '抛出异常'},
    {'keyword': 'true', 'desc': '布尔值真'},
    {'keyword': 'try', 'desc': '异常处理的尝试块'},
    {'keyword': 'typedef', 'desc': '类型别名'},
    {'keyword': 'var', 'desc': '自动推断类型的变量'},
    {'keyword': 'void', 'desc': '无返回值'},
    {'keyword': 'when', 'desc': 'switch中的条件守卫'},
    {'keyword': 'while', 'desc': 'while循环'},
    {'keyword': 'with', 'desc': '使用mixin'},
    {'keyword': 'yield', 'desc': '生成器返回值'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dart关键字'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '共 ${keywords.length} 个关键字',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: keywords.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final item = keywords[index];
                return ListTile(
                  leading: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      item['keyword']!,
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  title: Text(item['desc']!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
