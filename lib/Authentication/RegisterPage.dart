import 'package:flipkart_clone/Authentication/LoginPage.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _nameController = TextEditingController();

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
                        "Register Here !",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
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
                                    controller: _nameController,
                                    // ignore: missing_return
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Enter an Full Name';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        hintText: 'Name',
                                        hoverColor: Colors.white,
                                        errorStyle: TextStyle(
                                            color: Colors.orangeAccent,
                                            fontSize: 15)))),
                            Container(
                                padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
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
                                padding: EdgeInsets.only(top: 162),
                                margin: EdgeInsets.only(left: 20, right: 20),
                                child: SizedBox(
                                  height: 55,
                                  width: MediaQuery.of(context).size.width,
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return LoginPage();
                                      }));
                                    },
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    color: Colors.deepOrange,
                                  ),
                                )),
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
