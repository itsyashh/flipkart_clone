import 'package:flipkart_clone/Module/ProductModule.dart';
import 'package:flipkart_clone/Screens/ConfirmPage.dart';
import 'package:flutter/material.dart';

class BuyNow extends StatelessWidget {
  final ProductModel product;
  const BuyNow({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Container(
                child: Center(
              child: Text(
                "Order Details",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Serif',
                  color: Colors.orange,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 8.0,
                      color: Color.fromARGB(125, 0, 0, 255),
                    ),
                  ],
                ),
              ),
            )),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(15),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    )),
                    child: Image.asset(
                      product.image,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Text(
                          "${product.productName}",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Serif',
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "By :${product.brandName}",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Serif',
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Text(
                          "\Rs ${product.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Address :",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Serif',
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child:
                        Radio(value: true, groupValue: true, onChanged: null),
                  ),
                  Expanded(
                    child: Text(
                      "Metro Pillar 57, House Number 32/4, Patel Nagar New Delhi (Delhi)",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: Text(
                "Total Price : ${product.price}.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(50),
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: Colors.orange,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ConfirmPage();
                  }));
                },
                child: Text(
                  "Place Order".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
