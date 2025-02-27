import 'package:flutter/material.dart';
import 'package:pick_n_pay_shop/features/home/home.dart';
import 'package:pick_n_pay_shop/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: const Home(),
    );
  }
}
