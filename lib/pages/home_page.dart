import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_description_bar.dart';
import 'package:food_delivery_app/components/my_sliver_app_bar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';

import '../components/my_current_location.dart';
import '../components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
        [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme
                      .of(context)
                      .colorScheme
                      .secondary,
                ),

                //current location
                MyCurrentLocation(),
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme
                      .of(context)
                      .colorScheme
                      .secondary,
                ),

                MyDescriptionBar(),
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
             itemBuilder: (context,index) => Text('First tab items'),
           ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context,index) => Text('Second tab items'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context,index) => Text('Third tab items'),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
