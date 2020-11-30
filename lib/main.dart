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
  List<String> _products = ["Food Tester"];
  @override
  Widget build(BuildContext context) {
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
                  onPressed: () {
                    setState(() {
                      _products.add("Advanced Food Tester");
                    });
                  },
                  child: Text("Add Product"),
                ),
              ),
              Column(
                children: _products
                    .map((e) => Card(
                          child: Column(
                            children: [
                              Image.asset("assets/beach.jpg"),
                              Text(e)
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          )),
    );
  }
}
