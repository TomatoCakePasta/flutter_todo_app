import 'package:flutter/material.dart';
import 'package:flutter_todo_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      // Flutter 3.x以降はprimarySwatchが無効かも
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}