import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'package:dev_ui/constant.dart';

class RoundedPasswordField extends StatefulWidget {
  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: _isHidden,
        cursorColor: kPrimaryColor,
        onChanged: null,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _isHidden = !_isHidden;
              });
            },
            child: _isHidden
                ? Icon(
                    Icons.remove_red_eye,
                    color: kPrimaryColor,
                  )
                : Icon(
                    Icons.remove_red_eye,
                    color: Colors.red,
                  ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
