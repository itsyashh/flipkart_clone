import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Your Cart"),
      ),
      body: Center(
        child: Text(
          "Under Maintenance !",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
