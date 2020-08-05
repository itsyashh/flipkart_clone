import 'package:flipkart_clone/Authentication/ForgotPage.dart';
import 'package:flipkart_clone/Authentication/RegisterPage.dart';
import 'package:flipkart_clone/Screens/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigoAccent,
        body: Container(
            child: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Image.asset(
              'Assets/logo.png',
              height: 80,
              width: 100,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(
              height: MediaQuery.of(context).size.height * .8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 25, top: 30),
                      child: Text(
                        "Log in to get started",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25, top: 5),
                      child: Text(
                        "Experience the all new Flipkart !",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
                                child: TextFormField(
                                    autofocus: false,
                                    controller: _emailController,
                                    // ignore: missing_return
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Enter an email';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        hintText: 'Email',
                                        hoverColor: Colors.white,
                                        errorStyle: TextStyle(
                                            color: Colors.orangeAccent,
                                            fontSize: 15)))),
                            Container(
                                padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
                                child: TextFormField(
                                    // ignore: missing_return
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Enter Password';
                                      }
                                    },
                                    controller: _passController,
                                    autofocus: false,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        hintText: 'Password',
                                        errorStyle: TextStyle(
                                            color: Colors.orangeAccent,
                                            fontSize: 15)))),
                            Container(
                              padding: EdgeInsets.only(left: 175),
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return ForgotPage();
                                    }));
                                  },
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(color: Colors.red),
                                  )),
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 162),
                                margin: EdgeInsets.only(left: 20, right: 20),
                                child: SizedBox(
                                  height: 55,
                                  width: MediaQuery.of(context).size.width,
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return HomePage();
                                      }));
                                    },
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    color: Colors.deepOrange,
                                  ),
                                )),
                            Container(
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return RegisterPage();
                                    }));
                                  },
                                  child: Text("Register",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ])));
  }
}
