import 'package:flutter/material.dart';
import 'package:food_product/src/pages/home_page.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomePage());
  }
}
