import 'package:flutter/material.dart';

main() {
  runApp(ProductsApp());
}

class ProductsApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
        ),
        body: Card(
          child: Column(
            children: [Image.asset("assets/beach.jpg"), Text("Food Paradise")],
          ),
        ),
      ),
    );
  }
}
