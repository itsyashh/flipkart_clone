import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
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
          Padding(padding: EdgeInsets.only(top: 25)),
          Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
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
                        "Reset Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Form(
                        child: Column(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
                                child: TextFormField(
                                    autofocus: false,

                                    // ignore: missing_return
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Enter an email';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0)),
                                        hintText: 'Email',
                                        hoverColor: Colors.white,
                                        errorStyle: TextStyle(
                                            color: Colors.orangeAccent,
                                            fontSize: 15)))),
                            Container(
                                margin: EdgeInsets.all(50),
                                child: SizedBox(
                                  height: 55,
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: RaisedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Reset",
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
