import 'package:flutter/material.dart';

class PlantsProducts extends StatefulWidget {
  const PlantsProducts({Key? key}) : super(key: key);

  @override
  State<PlantsProducts> createState() => _PlantsProductsState();
}

class _PlantsProductsState extends State<PlantsProducts> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Plants'));
  }
}
