import 'package:dev_ui/constant.dart';
import 'package:flutter/material.dart';
import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';
import '../../components/rounded_email_field.dart';
import 'package:dev_ui/constant.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                child: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Register Account",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Create a new Account",
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
                        RoundedInputField(
                          hintText: "Username",
                        ),
                        RoundedPasswordField(),
                        RoundedEmailField(
                          hintText: 'Email',
                        ),
                        Divider(),
                        RaisedButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  kPrimaryColor,
                                  kpPrimaryColor2,
                                  kPrimaryColor,
                                ],
                              ),
                            ),
                            padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                            child: const Text(
                              'Register Account',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Text('Already have a account? Login')
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
