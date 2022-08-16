import 'package:flutter/material.dart';

class ProductCardButton extends StatelessWidget {
  final IconData icon;
  ProductCardButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(
        icon,
        size: 15,
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        //fixedSize: const Size(1, 1),
        minimumSize: Size(25, 25),
        shape: const CircleBorder(),
        primary: Colors.grey,
      ),
    );
  }
}
