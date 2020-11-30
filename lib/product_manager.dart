import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ["Food Tester"];

  @override
  Widget build(BuildContext context) {
    // Return a container
    return Column(
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
        Products(_products)
      ],
    );
  }
}
