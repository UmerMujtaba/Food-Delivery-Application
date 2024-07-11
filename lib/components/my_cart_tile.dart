import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_quantity_selector.dart';
import 'package:food_delivery_app/model/cart_item.dart';
import 'package:provider/provider.dart';

import '../model/restaurants.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(cartItem.food.imagePath,
                        height: 150, width: 100),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text('\$' + cartItem.food.price.toString()),
                    ],
                  ),
                  Spacer(),
                  MyQuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                    onIncrement: () {
                      restaurant.addToCart(
                          cartItem.food, cartItem.selectedAddons);
                    },
                    onDecrement: () {
                      restaurant.removeFromCart(cartItem);
                    },
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ),
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10,bottom: 10,right: 10),
                children: cartItem.selectedAddons
                    .map(
                      (addon) => Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: FilterChip(
                            label: Row(
                              children: [
                                Text(addon.name),
                                SizedBox(width: 5),
                                Text('\$${addon.price}',style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),),
                              ],
                            ),
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Theme.of(context)
                                   .colorScheme
                                   .primary,
                              )
                            ),
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.inversePrimary,
                                fontSize: 12),
                            onSelected: (value) {}),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
