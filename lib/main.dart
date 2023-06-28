import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:today_app/screens/Home/view/Home_Screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen()
      },
    ),
  );
}
