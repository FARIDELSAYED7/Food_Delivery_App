import 'package:flutter/material.dart';
import 'package:food_deliver_app/Screens/home_page.dart';

void main() {
  runApp(const Food_Delivery());
}

class  Food_Delivery extends StatelessWidget {
  const Food_Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),
    title: "ChefCode",
    debugShowCheckedModeBanner: false, 
    );
  }
}
