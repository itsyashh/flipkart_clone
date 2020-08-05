import 'package:flipkart_clone/Module/ProductModule.dart';
import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  final ProductModel product;
  final Function press;
  const BuildCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20 / 4),
            child: Text(
              product.productName,
              style: TextStyle(
                  color: Colors.teal,
                  fontFamily: 'serif',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Text(
              "Color: ${product.colorName}",
              style: TextStyle(color: Colors.teal),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 3),
              child: Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Text(
                    "\Rs ${product.price}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(left: 45)),
                  Expanded(
                      child: Text(
                    " ${product.productRating} ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      background: Paint()..color = Colors.green,
                    ),
                  )),
                ],
              ))
        ],
      ),
    );
  }
}
