import 'package:flutter/material.dart';
import 'package:plants_system/screens/plants_HomeScreen/all_products_screen.dart';
import 'package:plants_system/screens/plants_HomeScreen/plants_products_screen.dart';
import 'package:plants_system/screens/plants_HomeScreen/seeds_products_screen.dart';
import 'package:plants_system/screens/plants_HomeScreen/tools_products_screen.dart';
import 'package:plants_system/screens/quiz_screen.dart';
import 'package:plants_system/screens/shopping_cart_screen.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({Key? key}) : super(key: key);

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  int _selectedIndex = 0;
  bool allButton = true;
  bool plantsButton = false;
  bool seedsButton = false;
  bool toolsButton = false;
  final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.green,
    elevation: 5,
    minimumSize: Size(88, 60),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  );

  static List<Widget> _pages = [
    AllProductsScreen(),
    PlantsProducts(),
    SeedsProductsScreen(),
    ToolsProductsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.quiz),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizScreen(),
                ),
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ).add(
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02)),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Card(
                      elevation: 3,
                      color: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.search,
                        ),
                        title: Text(
                          'Search',
                        ),
                        onTap: () {
                          /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SearchScreen(),
                                    ),
                                  );*/
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                    width: 4,
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: elevatedButtonStyle,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShoppingCart(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            width: 2.0,
                            color: (allButton) ? Colors.green : Colors.grey),
                      ),
                      child: Text(
                        'All',
                        style: TextStyle(
                            color: (allButton) ? Colors.green : Colors.grey),
                      ),
                      onPressed: () {
                        setState(() {
                          allButton = true;
                          plantsButton = false;
                          seedsButton = false;
                          toolsButton = false;
                          _selectedIndex = 0;
                        });
                      },
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            width: 2.0,
                            color: (plantsButton) ? Colors.green : Colors.grey),
                      ),
                      child: Text(
                        'Plants',
                        style: TextStyle(
                            color: (plantsButton) ? Colors.green : Colors.grey),
                      ),
                      onPressed: () {
                        setState(() {
                          allButton = false;
                          plantsButton = true;
                          seedsButton = false;
                          toolsButton = false;
                          _selectedIndex = 1;
                        });
                      },
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            width: 2.0,
                            color: (seedsButton) ? Colors.green : Colors.grey),
                      ),
                      child: Text(
                        'Seeds',
                        style: TextStyle(
                            color: (seedsButton) ? Colors.green : Colors.grey),
                      ),
                      onPressed: () {
                        setState(() {
                          allButton = false;
                          plantsButton = false;
                          seedsButton = true;
                          toolsButton = false;
                          _selectedIndex = 2;
                        });
                      },
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            width: 2.0,
                            color: (toolsButton) ? Colors.green : Colors.grey),
                      ),
                      child: Text(
                        'Tools',
                        style: TextStyle(
                            color: (toolsButton) ? Colors.green : Colors.grey),
                      ),
                      onPressed: () {
                        setState(() {
                          allButton = false;
                          plantsButton = false;
                          seedsButton = false;
                          toolsButton = true;
                          _selectedIndex = 3;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              /*Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(),
                    ProductCard(),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCard(),
                    ProductCard(),
                  ],
                ),
              )*/
              Center(
                child: _pages.elementAt(_selectedIndex),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
