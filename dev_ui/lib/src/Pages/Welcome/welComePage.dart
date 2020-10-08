import 'dart:html';
import 'package:flutter/material.dart';
import 'package:dev_ui/constant.dart';
import '../Home/HomePage.dart';
import '../../components/box_Container.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.amber),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(300, 80, 0, 80),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
                child: ListView(children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Welcome to Dev Group",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Coding is my life",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 20),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        Divider(),
                        RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HomePage(); // Chuyen toi trang profile
                                  },
                                ),
                              );
                            },
                            textColor: Colors.white,
                            padding: const EdgeInsets.all(0.0),
                            child: boxContainer),
                      ],
                    ),
                  ),
                ]),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 80, 300, 80),
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://res.cloudinary.com/dwbo0xln4/image/upload/v1601699328/mssojjauajbmsaxr7wku.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
