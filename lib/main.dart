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
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.lightBlue,
          accentColor: Colors.limeAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
        ),
        body: ProductManager(startingProduct: "Food Tester",),
      ),
    );
  }
}
