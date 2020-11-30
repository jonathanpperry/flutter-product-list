import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = "Sweets Tester"}) {
    print("[Product Manager] Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    // Add the starting product to products
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Return a container
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add("Advanced Food Tester");
              });
            },
            child: Text("Add Product"),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
