# Flutter 笔记

- [Android_Studio快捷键](#Android_Studio快捷键)
- [Dart](#Dart)
- [UI组建](#UI组建)
  
##### Android_Studio快捷键

> 格式化代码 `option + command + L`
>
> 热重载 `command + s` 或 `command + \`
>
> run   `control + r` 

##### Dart 语法

```dart
//数组
var list = [1, 2, 3];

//字典
var gifts = {
  // Key:Value
  'first':'A',
  'second':'B',
};
```

#### UI组建

> Widget (小部件)
>
> 有状态 （Stateful） 无状态 （Stateless）

#### Flutter 常用命令

##### 项目管理

```bash
flutter create <project_name>   # 创建新的 Flutter 项目
flutter clean                   # 清理项目，删除 build 文件夹
flutter pub get                 # 获取/安装 pubspec.yaml 中的依赖包
flutter pub upgrade             # 升级依赖包到最新兼容版本
```

##### 运行与调试

```bash
flutter run                     # 运行应用，支持热重载 (Hot Reload)
flutter run -d <device_id>      # 在指定设备上运行 (如: flutter run -d chrome)
flutter run --release           # 以发布模式运行，关闭调试工具
flutter install                 # 将已构建的 APK/IPA 安装到设备
```

##### 设备和模拟器

```bash
flutter devices                 # 查看已连接的设备和模拟器
flutter emulators               # 查看可用的模拟器列表
flutter emulators --launch <id> # 启动指定模拟器 (如: --launch Pixel_9_Pro)
```

##### 构建与打包

```bash
flutter build apk               # 构建 Android APK (Debug)
flutter build apk --release     # 构建 Android APK (Release)
flutter build appbundle         # 构建 AAB，推荐用于 Google Play
flutter build ios               # 构建 iOS IPA (需 macOS + Xcode)
flutter build web               # 构建 Web 应用
```

##### 分析和诊断

```bash
flutter doctor                  # 检查开发环境配置
flutter analyze                 # 静态代码分析，检查错误和警告
```

##### 升级与缓存

```bash
flutter upgrade                 # 升级 Flutter SDK 到最新稳定版
flutter precache                # 预缓存所有平台的预编译二进制文件
```



