import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(300, 80, 300, 80),
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
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
