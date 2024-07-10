import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_description_bar.dart';
import 'package:food_delivery_app/components/my_sliver_app_bar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/model/food.dart';

import '../components/my_current_location.dart';
import '../components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text('First tab items'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text('Second tab items'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text('Third tab items'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text('Third tab items'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text('Third tab items'),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
