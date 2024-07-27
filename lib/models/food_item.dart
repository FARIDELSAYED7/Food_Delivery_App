class FoodItem {
  final String name;
  final String imgUrl;
  final double price;

  FoodItem({required this.name, required this.imgUrl, required this.price});
}

List<FoodItem> food = [
  FoodItem(name: "Beef Burger", imgUrl: 'https://www.freepnglogos.com/uploads/burger-png/image-mother-nature-burger-simpsons-restaurants-39.png', price: 10),
  FoodItem(name: "Chicken Burger", imgUrl: 'https://www.freepnglogos.com/uploads/burger-png/burger-png-chicken-raised-without-antibiotics-guarantee-8.png', price: 10),
  FoodItem(name: "Pizza", imgUrl: 'https://www.freepnglogos.com/uploads/pizza-png/pepperoni-pizza-image-cuginos-pizzeria-35.png', price: 15),
  FoodItem(name: "French Friez", imgUrl: 'https://www.freepnglogos.com/uploads/fries-png/fries-mcdonald-classic-ebi-burger-returns-prischew-dot-com-31.png', price: 3),
  FoodItem(name: "Fried Chicken", imgUrl: 'https://www.freepnglogos.com/uploads/fried-chicken-png/fried-chicken-doyle-restaurant-inc-welcome-8.png', price: 3),
];
