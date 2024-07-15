import 'package:flutter/material.dart';
import 'package:foodalix/components/my_description_bar.dart';
import 'package:foodalix/components/my_food_tile.dart';
import 'package:foodalix/components/my_sliver_app_bar.dart';
import 'package:foodalix/components/my_tab_bar.dart';
import 'package:foodalix/model/food.dart';
import 'package:foodalix/pages/food_page.dart';
import 'package:provider/provider.dart';

import '../components/my_current_location.dart';
import '../components/my_drawer.dart';
import '../model/restaurants.dart';

class HomePage extends StatefulWidget {
  final token;
  const HomePage({super.key, required this.token});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
    print('Number of Food Categories: ${FoodCategory.values.length}');
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  //return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final food = categoryMenu[index];

            return FoodTile(
                food: food,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FoodPage(
                                food: food,
                              )));
                });
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                //current location
                const MyCurrentLocation(),

                const MyDescriptionBar(),
                //desc box
              ],
            ),
          )
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
