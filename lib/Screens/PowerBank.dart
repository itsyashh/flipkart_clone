import 'package:flutter/material.dart';

class PowerBank extends StatefulWidget {
  @override
  _PowerBankState createState() => _PowerBankState();
}

class _PowerBankState extends State<PowerBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Power Bank"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 5)),
          Container(
            margin: EdgeInsets.all(5),
            child: Card(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'Assets/pb1.jpg',
                    height: 150,
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          'Mi 10000 mAh Power Bank',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'serif',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 15),
                        child: Text(
                          'Color : black',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          'by Mi',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 75, top: 20),
                        child: Text(
                          'Price : 669 Rs',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'serif',
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Card(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'Assets/pb6.jpg',
                    height: 150,
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          'Philips 10000 mAh Power \nBank',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'serif',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 15),
                        child: Text(
                          'Color : blue',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          'by Phillips',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 75, top: 15),
                        child: Text(
                          'Price : Rs 649',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'serif',
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          Container(
            margin: EdgeInsets.all(5),
            child: Card(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'Assets/pb4.jpg',
                    height: 150,
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                          'Mi 10000 mAh Power \nBank',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'serif',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 15),
                        child: Text(
                          'Color : black',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          'by Mi',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 75, top: 20),
                        child: Text(
                          'Price : 719 Rs',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'serif',
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Card(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'Assets/pb3.jpg',
                    height: 160,
                    width: 100,
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          'Flipkart 10000 mAh Power \nBank',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'serif',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 15),
                        child: Text(
                          'Color : black',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 25, top: 5),
                        child: Text(
                          'by flipkart',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 75, top: 20),
                        child: Text(
                          'Price : 549 Rs',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'serif',
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
