//food class
class Food {
  final String name; //cheese burger
  final String description; //burger full of cheese
  final double price; //4.99
  final String imagePath; //lib/images/cheese_burger.png
  final FoodCategory category; //burger
  List<Addon> availableAddons; //[extra cheese, sauce, extra patty]

  Food({
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    this.availableAddons = const [],
  });
}

enum FoodCategory { burgers, salads, sides, deserts, drinks }

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
