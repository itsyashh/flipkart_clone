import 'package:flipkart_clone/Module/ProductModule.dart';
import 'package:flipkart_clone/Screens/DetailPage.dart';
import 'package:flutter/material.dart';
import 'BuildCard.dart';

class PoloPage extends StatefulWidget {
  @override
  _PoloPageState createState() => _PoloPageState();
}

class _PoloPageState extends State<PoloPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Polo Tshirt"),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => BuildCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            product: products[index],
                          ),
                        )),
                  )),
        )
      ]),
    );
  }
}
