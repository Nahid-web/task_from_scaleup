import 'package:flutter/material.dart';

OutlineInputBorder borderLine({color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.0),
    borderSide: BorderSide(
      color: color,
      width: 1,
    ),
  );
}
