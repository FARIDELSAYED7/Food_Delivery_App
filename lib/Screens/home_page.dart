import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Center(
              child: Column(
            children: [Text("Iam The Drawer")],
          )),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text(
            "CHEF CODE",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  "assets/images/classic_burger.jpg",
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/categories/burger.png",
                            width: 100,
                          ),
                          Text(
                            "Burger",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(235, 146, 60, 34)),
                          ),
                          Text(
                            '5\$',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/categories/pasta.png",
                            width: 100,
                          ),
                          Text(
                            "Pasta",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(235, 146, 60, 34)),
                          ),
                          Text(
                            '7\$',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/categories/pizza.png",
                            width: 100,
                          ),
                          Text(
                            "pizza",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(235, 146, 60, 34)),
                          ),
                          Text(
                            '9\$',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
