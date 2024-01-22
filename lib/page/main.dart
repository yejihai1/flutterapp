import 'package:flutter/material.dart';

import 'DefaultItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget item = getText(context);
    List<Widget> children = <Widget>[];
    for (int i = 0; i < 5; i++) {
      children.add(item);
    }
    return Scaffold(
        body: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: children,
            )));
  }

  Widget getText(BuildContext context) {
    // return InkWell(
    //   // When the user taps the button, show a snackbar.
    //   onTap: () {
    //   },
    //   child: const Padding(
    //     padding: EdgeInsets.all(12),
    //     child: Text('Flat Button'),
    //   ),
    // );
    return DefaultItem(
        name: "张三",
        date: "一天前",
        content:
            "Flutter 布局的核心机制是 widgets。在 Flutter 中，几乎所有东西都是 widget —— 甚至布局模型都是 widgets。你在 Flutter 应用程序中看到的图像，图标和文本都是 widgets。此外不能直接看到的也是 widgets，例如用来排列、限制和对齐可见 widgets 的行、列和网格。",
        label: "问答官方");
  }
}
