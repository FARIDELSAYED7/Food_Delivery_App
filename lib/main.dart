import 'package:flutter/material.dart';
import 'package:food_deliver_app/Screens/bottom_navigation_bar.dart';

void main() {
  runApp(const Food_Delivery());
}

// ignore: camel_case_types
class Food_Delivery extends StatelessWidget {
  const Food_Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomNavBarPage(),
    // HomePage(),
    title: "ChefCode",
    debugShowCheckedModeBanner: false,
    );
  }
}
