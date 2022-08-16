import 'package:flutter/material.dart';
import 'package:plants_system/widgets/product_card_button.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.green,
    elevation: 5,
    minimumSize: Size(40, 40),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.5,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.3,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/plant.jpg',
                          width: 100,
                          height: 130,
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: FittedBox(
                        child: Row(
                          children: [
                            ProductCardButton(Icons.remove),
                            Text('1'),
                            ProductCardButton(Icons.add),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Gardenia Plant",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("70 EGP"),
              ElevatedButton(
                style: elevatedButtonStyle,
                child: Text(
                  'Add To Cart',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
