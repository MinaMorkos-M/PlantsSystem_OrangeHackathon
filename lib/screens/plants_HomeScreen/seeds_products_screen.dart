import 'package:flutter/material.dart';

class SeedsProductsScreen extends StatefulWidget {
  const SeedsProductsScreen({Key? key}) : super(key: key);

  @override
  State<SeedsProductsScreen> createState() => _SeedsProductsState();
}

class _SeedsProductsState extends State<SeedsProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Seeds'));
  }
}
