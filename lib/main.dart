import 'package:dribble_design/ui/home_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dribble Ui',
      theme: ThemeData(fontFamily: 'Inter'),
      //home: const DribbleUi(),
      home: HomeUi(),
    );
  }
}
