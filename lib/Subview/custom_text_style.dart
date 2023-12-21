// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {

  const CustomTextStyle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              );
  }
}