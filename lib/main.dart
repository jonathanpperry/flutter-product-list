import 'package:flutter/material.dart';

main() {
  runApp(ProductsApp());
}

class ProductsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // Return the state
    return _MyAppState();
  }
}

class _MyAppState extends State<ProductsApp> {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Product List"),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Add Product"),
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset("assets/beach.jpg"),
                    Text("Food Paradise")
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
