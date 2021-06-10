import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class CustomButtons extends StatelessWidget {
  final String title;
  final Function onPressed;

  CustomButtons({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(title),
      onPressed: onPressed,
    );
  }
}
