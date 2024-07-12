import 'package:flutter/material.dart';

import '../pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key, required this.child, required this.title});

  final Widget child;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)
            =>
            const CartPage()
            ));
          },
        ),
      ],
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .surface,
      foregroundColor: Theme
          .of(context)
          .colorScheme
          .inversePrimary,
      title: const Text('Sunset Dinner'),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        centerTitle: true,
        title: title,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
