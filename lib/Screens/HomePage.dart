import 'package:flipkart_clone/Screens/CartPage.dart';
import 'package:flipkart_clone/Screens/NotificationPage.dart';
import 'package:flipkart_clone/Screens/PoloPage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // ignore: non_constant_identifier_names
  Widget image_slider_carousel = Container(
      height: 125,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('Assets/p1.png'),
          AssetImage('Assets/p2.png'),
          AssetImage('Assets/p3.png'),
          AssetImage('Assets/p4.png'),
          AssetImage('Assets/p5.png'),
        ],
        autoplay: true,
        indicatorBgPadding: 0,
        dotColor: Colors.white,
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: Image.asset(
          'Assets/flipkart.png',
          height: 50,
        ),
        actions: <Widget>[
          InkWell(
            child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NotificationPage();
                  }));
                }),
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            child: InkWell(
              child: Image.asset(
                'Assets/cart.png',
                height: 25,
                width: 25,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartPage();
                }));
              },
            ),
          )
        ],
        elevation: 0.0,
      ),
      drawer: Drawer(),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.indigoAccent,
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: 'Search for Products,Brand and More',
                      border: InputBorder.none),
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Image.asset(
                          'Assets/1.jpg',
                          height: 75,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Image.asset(
                          'Assets/2.jpg',
                          height: 75,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Image.asset(
                          'Assets/3.jpg',
                          height: 75,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Image.asset(
                          'Assets/4.jpg',
                          height: 75,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Image.asset(
                          'Assets/5.jpg',
                          height: 75,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Image.asset(
                          'Assets/6.jpg',
                          height: 75,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Image.asset(
                          'Assets/7.jpg',
                          height: 75,
                        ),
                        onTap: () {},
                      ),
                    ],
                  )),
            ),
            Container(
              child: image_slider_carousel,
            ),
            Container(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Image.asset(
                          'Assets/t1.jpg',
                          height: 150,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PoloPage();
                          }));
                        },
                      ),
                      InkWell(
                        child: Image.asset(
                          'Assets/t2.jpg',
                          height: 150,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Image.asset(
                          'Assets/t3.jpg',
                          height: 150,
                        ),
                        onTap: () {},
                      ),
                    ],
                  )),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              height: 550,
              width: MediaQuery.of(context).size.width,
              color: Colors.tealAccent[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 25, top: 35),
                    child: Text(
                      "Top Rated",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 25)),
                      InkWell(
                        child: Image.asset(
                          'Assets/a2.jpg',
                          height: 210,
                          width: 185,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PoloPage();
                          }));
                        },
                      ),
                      Padding(padding: EdgeInsets.only(left: 1)),
                      InkWell(
                          child: Image.asset(
                            'Assets/a4.jpg',
                            height: 210,
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PoloPage();
                            }));
                          }),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 3)),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 25)),
                      InkWell(
                        child: Image.asset(
                          'Assets/a3.jpg',
                          height: 210,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PoloPage();
                          }));
                        },
                      ),
                      Padding(padding: EdgeInsets.only(left: 2)),
                      InkWell(
                        child: Image.asset(
                          'Assets/a1.jpg',
                          height: 210,
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PoloPage();
                          }));
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 325,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 30),
                    child: Text(
                      "Featured Brand",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, top: 7),
                    child: Text(
                      "Sponsored",
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset('Assets/ad.jpg'),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              height: 550,
              width: MediaQuery.of(context).size.width,
              color: Colors.pink[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 25, top: 35),
                    child: Text(
                      "Top Selection",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 25)),
                      InkWell(
                        child: Image.asset(
                          'Assets/b1.jpg',
                          height: 210,
                        ),
                        onTap: () {},
                      ),
                      Padding(padding: EdgeInsets.only(left: 2)),
                      InkWell(
                        child: Image.asset(
                          'Assets/b2.jpg',
                          height: 210,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 3)),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 25)),
                      InkWell(
                        child: Image.asset(
                          'Assets/b3.jpg',
                          height: 210,
                        ),
                        onTap: () {},
                      ),
                      Padding(padding: EdgeInsets.only(left: 2)),
                      InkWell(
                        child: Image.asset(
                          'Assets/b4.jpg',
                          height: 210,
                        ),
                        onTap: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
