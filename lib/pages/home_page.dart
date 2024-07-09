import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_description_bar.dart';
import 'package:food_delivery_app/components/my_sliver_app_bar.dart';

import '../components/my_current_location.dart';
import '../components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: const Text('title'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                //current location
                MyCurrentLocation(),
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                MyDescriptionBar(),
                //desc box
              ],
            ),
          )
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
