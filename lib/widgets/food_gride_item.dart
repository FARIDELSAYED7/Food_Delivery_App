import 'package:flutter/material.dart';

class FoodGridItem extends StatelessWidget {
  const FoodGridItem({super.key ,required this.foodItem});
final dynamic foodItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(
              foodItem.imgUrl,
              height: 100,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              foodItem.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            Text('\$ ${foodItem.price}',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Colors.orange))
          ],
        ),
      ),
    );
  }
}
