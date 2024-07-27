import 'package:flutter/material.dart';
import 'package:food_deliver_app/Screens/home_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedIndex = 0;
  void onItemTap(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  List<Widget> Screens = [
    const HomePage(),
    const Center(
      child: Text("Heelo"),
    ),
   const Center(
      child: Text("MR Ahmed"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[100],
      drawer:const Drawer(
        backgroundColor: Colors.white,
        child: Center(
            child: Column(
          children: [Text("Iam The Drawer")],
        )),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        title: const Text(
          "CHEF CODE",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTap,
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}
