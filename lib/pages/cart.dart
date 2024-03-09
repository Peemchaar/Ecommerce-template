// ignore_for_file: prefer_const_constructors
import 'package:ecommerce_app/models/cart.dart';
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            SizedBox(height: 20),

            Expanded(
              child: value.getUserCart().isNotEmpty? 
                ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index){
                    Shoe individualShoe = value.getUserCart()[index];
                    return CartItem(shoe: individualShoe,);
                  },
                ) : 
                Center(
                  child: Text(
                    "There's nothing here yet...",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                )
            )
          ],
        ),
      )
    );
  }
}