import 'package:flutter/material.dart';
import 'package:pham_duc_long_flutter_10/presentaions/exercise_1/screen_a.dart';
import 'package:pham_duc_long_flutter_10/presentaions/exercise_2/home_rent.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeRentScreen(),
    );
  }
}

