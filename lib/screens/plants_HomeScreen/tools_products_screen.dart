import 'package:flutter/material.dart';

class ToolsProductsScreen extends StatefulWidget {
  const ToolsProductsScreen({Key? key}) : super(key: key);

  @override
  State<ToolsProductsScreen> createState() => _ToolsProductsScreenState();
}

class _ToolsProductsScreenState extends State<ToolsProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Tools'));
  }
}
