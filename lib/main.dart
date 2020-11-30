// Flutter imports
import 'package:flutter/material.dart';
// Local component imports
import './product_manager.dart';

main() {
  runApp(ProductsApp());
}

class ProductsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Product List"),
          ),
          body: ProductManager("Food Tester"),
          ),
    );
  }
}
