import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// Color all
const kBackgroundColor = Color(0xFFF8F8F8);
const kActiveIconColor = Color(0xFFE68342);
const kTextColor = Color(0xFF222B45);
const kBlueLightColor = Color(0xFFDAF7A6);
const kBlueColor = Color(0xFF6FA707);
const kShadowColor = Color(0xFFE6E6E6);

// Spinner Loading
const spinkit_spinner_loading = SpinKitRotatingCircle(
  color: Colors.lightGreenAccent,
  size: 50.0,
);

SizedBox mySizedBox(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox mySizedBox_width(double width) {
  return SizedBox(
    width: width,
  );
}
