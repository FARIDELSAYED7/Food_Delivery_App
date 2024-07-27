import 'package:flutter/material.dart';
import 'package:food_deliver_app/models/food_item.dart';
import 'package:food_deliver_app/widgets/food_gride_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                "assets/images/classic_burger.jpg",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height*0.23,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: food.length,
              itemBuilder: (context, index) => FoodGridItem(
                foodItem: food[index],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
            )
          ],
        ),
      ),
    );
  }
}
