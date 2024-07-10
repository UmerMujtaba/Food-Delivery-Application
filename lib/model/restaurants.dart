import 'package:food_delivery_app/model/food.dart';

class Restaturant {
  final List<Food> _menu = [
    //burgers list

    Food(
      name: "Beef Cheese Burger",
      description:
      "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burger3.jpeg",
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Patty", price: 1.99),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),

    Food(
      name: "Chicken Cheese Burger",
      description:
      "A juicy chicken patty with melted cheddar, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burger2.jpeg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Pickle", price: 0.99),
        Addon(name: "Mustard Sauce", price: 0.50),
        Addon(name: "Jalapeno", price: 2.00),
      ],
    ),

    Food(
      name: "Grilled Chicken Burger",
      description:
      "A juicy grilled chicken patty with lettuce, melted cheddar, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burger5.jpeg",
      price: 1.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Pickle", price: 0.99),
        Addon(name: "Mustard Sauce", price: 0.50),
        Addon(name: "Jalapeno", price: 2.00),
      ],
    ),

    Food(
      name: "Krunch Burger",
      description:
      "A crunchy chicken burger with  lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burger1.jpeg",
      price: 1.20,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Cheese Slice", price: 0.99),
        Addon(name: "Mustard Sauce", price: 0.50),
        Addon(name: "Jalapeno", price: 2.00),
      ],
    ),

    Food(
      name: "Smoked Grill Burger",
      description:
      "A smoky grilled chicken patty with melted cheddar, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/burger4.jpeg",
      price: 2.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Patty", price: 0.99),
        Addon(name: "Mustard Sauce", price: 0.50),
        Addon(name: "Jalapeno", price: 2.00),
      ],
    ),

    //salads
    Food(
      name: "Greek Salad",
      description:
      "Tomatoes, cucumbers, red onions, olives, with olive oil and herbs.",
      imagePath: "lib/images/salads/salad1.jpeg",
      price: 7.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Pickle", price: 0.50),
        Addon(name: "Jalapeno", price: 2.00),
      ],
    ),

    Food(
      name: "Russian Salad",
      description:
      "Creamy salad with Apple, Pineapple, cucumbers, olives, with olive oil and herbs.",
      imagePath: "lib/images/salads/salad2.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Sauce", price: 0.50),
        Addon(name: "Almond", price: 2.00),
      ],
    ),

    Food(
      name: "Italian Salad",
      description:
      " Part green salad, part antipasto salad, this recipe combines lettuce, celery, onion, peperoncini, olives, and cherry tomatoes.",
      imagePath: "lib/images/salads/salad3.jpeg",
      price: 6.50,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Mayo", price: 1.00),
      ],
    ),

    Food(
      name: "Fruit Salad",
      description:
      "Fruit salad is a dish consisting of various kinds of fruit, sometimes served in a liquid, either their juices or a syrup.",
      imagePath: "lib/images/salads/salad1.jpeg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Pineapple", price: 0.99),
        Addon(name: "Berries", price: 0.99),
      ],
    ),

    //sides on
    Food(
      name: "Potato Fries",
      description:
      " This French fries recipe is made using a clever, proven cooking method that guarantees crispy fries - and they STAY crispy for ages.",
      price: 2.99,
      imagePath: 'lib/images/sides/fries.jpeg',
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Cheese", price: 0.99),
        Addon(name: "Pickle", price: 0.99),
      ],
    ),

    Food(
      name: "Onion Rings",
      description:
      " Onion Rings are deliciously crisp, golden and made with just a handful of ingredients. Add them to burgers for a satisfying crunch.",
      price: 1.99,
      imagePath: 'lib/images/sides/onion.jpeg',
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Pickle", price: 0.99),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Cheesy mozzarella sticks served with marinara sauce.",
      price: 2.49,
      imagePath: 'lib/images/sides/sticks.jpeg',
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.50),
        Addon(name: "Ranch Dip", price: 0.50),
      ],
    ),

    Food(
      name: "Garlic Bread",
      description: "Crispy garlic bread topped with melted butter and herbs.",
      price: 1.99,
      imagePath: 'lib/images/sides/garlic.jpeg',
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese", price: 0.50),
        Addon(name: "Marinara Sauce", price: 0.50),
      ],
    ),

    Food(
      name: "Coleslaw",
      description:
      "Fresh and tangy coleslaw made with shredded cabbage and carrots.",
      price: 1.49,
      imagePath: 'lib/images/sides/coleslaw.jpg',
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Dressing", price: 0.25),
        Addon(name: "Cranberries", price: 0.50),
      ],
    ),

    //drinks
    Food(
      name: "Cola",
      description: "Refreshing cola beverage.",
      price: 1.29,
      imagePath: 'lib/images/drinks/drink5.jpeg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon", price: 0.25),
        Addon(name: "Ice", price: 0.10),
      ],
    ),
    Food(
      name: "Lemonade",
      description: "Freshly squeezed lemonade.",
      price: 1.49,
      imagePath: 'lib/images/drinks/drink4.jpeg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint", price: 0.25),
        Addon(name: "Ice", price: 0.10),
      ],
    ),

    Food(
      name: "Iced Tea",
      description: "Chilled iced tea with a hint of lemon.",
      price: 1.49,
      imagePath: 'lib/images/drinks/drink3.jpeg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon", price: 0.25),
        Addon(name: "Sugar", price: 0.10),
      ],
    ),

    Food(
      name: "Milkshake",
      description: "Creamy milkshake available in various flavors.",
      price: 2.99,
      imagePath: 'lib/images/drinks/drink1.jpeg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.50),
        Addon(name: "Cherry", price: 0.25),
      ],
    ),

    Food(
      name: "Orange Juice",
      description: "Fresh orange juice perfect for sunny weather.",
      price: 1.99,
      imagePath: 'lib/images/drinks/drink2.jpeg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "slice", price: 0.25),
        Addon(name: "Sugar", price: 0.10),
      ],
    ),

    // Desserts
    Food(
      name: "Chocolate Cake",
      description:
      "Rich and moist chocolate cake with a creamy chocolate frosting.",
      price: 3.99,
      imagePath: 'lib/images/desserts/dessert2.jpeg',
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Extra Frosting", price: 0.50),
        Addon(name: "Vanilla Ice Cream", price: 1.00),
      ],
    ),

    Food(
      name: "Cheesecake",
      description: "Creamy and smooth cheesecake with a graham cracker crust.",
      price: 4.49,
      imagePath: 'lib/images/desserts/dessert1.jpeg',
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Strawberry Sauce", price: 0.75),
        Addon(name: "Whipped Cream", price: 0.50),
      ],
    ),

    Food(
      name: "Brownies",
      description: "Fudgy and rich brownies with a chocolatey taste.",
      price: 2.99,
      imagePath: 'lib/images/desserts/dessert4.jpeg',
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Walnuts", price: 0.50),
        Addon(name: "Caramel Drizzle", price: 0.50),
      ],
    ),

    Food(
      name: "Ice Cream Sundae",
      description:
      "Vanilla ice cream sundae topped with chocolate syrup and sprinkles.",
      price: 3.49,
      imagePath: 'lib/images/desserts/sundae.jpeg',
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Cherry", price: 0.25),
        Addon(name: "Extra Sprinkles", price: 0.25),
      ],
    ),

    Food(
      name: "Apple Pie",
      description:
      "Classic apple pie with a flaky crust and cinnamon-spiced filling.",
      price: 3.99,
      imagePath: 'lib/images/desserts/dessert3.jpeg',
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.00),
        Addon(name: "Caramel Sauce", price: 0.50),
      ],
    ),

    Food(
      name: "Cup cake",
      description: "Classic cup cakes with a flaky crust and crunchy biscuit.",
      price: 3.99,
      imagePath: 'lib/images/desserts/dessert5.jpeg',
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 1.00),
        Addon(name: "Caramel Sauce", price: 0.50),
      ],
    ),
  ];


/*
G E T T E R S
*/
  List<Food> get menu => _menu;


/*
O P E R A T O R S

// add to cart



// remove from cart



// get total price




// get total amount of items



*/

/*
H E L P E R S
// generate receipt


//format double value into money


//format list of addons into a string summary
*/
}