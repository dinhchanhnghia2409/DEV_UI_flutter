import 'package:flutter/material.dart';
import 'package:dev_ui/constant.dart';

Widget boxContainer = Container(
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
    'Register',
    style: TextStyle(
      fontSize: 20,
    ),
  ),
);
