import 'package:flutter/material.dart';
import 'package:plants_system/widgets/product_card_button.dart';
import 'package:plants_system/widgets/shopping_cart_item.dart';

class ShoppingCart extends StatelessWidget {
  final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.green,
    elevation: 5,
    minimumSize: Size(250, 60),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Cart"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                ShoppingCartItem(),
                ShoppingCartItem(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.05,
            ).add(
              EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "180,000 EGP",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                  height: 15,
                ),
                ElevatedButton(
                  style: elevatedButtonStyle,
                  child: Text('Checkout'),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
